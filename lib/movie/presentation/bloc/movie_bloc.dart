import 'package:felem/core/domain/entities/movie.dart';
import 'package:felem/core/domain/entities/movie_item.dart';
import 'package:felem/core/utils/app_state.dart';
import 'package:felem/movie/domain/usecase/get_movies.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_event.dart';
part 'movie_bloc.freezed.dart';

class MovieBloc extends Bloc<MovieEvent, AppStates<Movie>> {
  MovieBloc(this.getMovies) : super(const LoadingState()) {
    on<_Started>(_onMovieStarted);
    on<_Refreshed>(_onMovieRefreshed);
  }

  final GetMovies getMovies;

  int _page = 1;
  final int _size = 10;

  _onMovieStarted(
    _Started event,
    Emitter<AppStates<Movie>> emit,
  ) async {
    final result = await getMovies.execute(_size, _page);

    result.fold(
      (failure) => emit(ErrorState(failure)),
      (movies) {
        final currentState = state;
        _page++;
        currentState is SuccessState
            ? _onMovieLoadMore(movies.data, emit)
            : movies.data.isEmpty
                ? emit(const EmptyState())
                : emit(SuccessState(movies));
      },
    );
  }

  _onMovieRefreshed(
    _Refreshed event,
    Emitter<AppStates<Movie>> emit,
  ) async {
    emit(const LoadingState());
    _page = 1;
    final result = await getMovies.execute(_size, _page);

    result.fold(
      (failure) => emit(ErrorState(failure)),
      (movies) {
        _page++;
        if (movies.data.isEmpty) return emit(const EmptyState());
        emit(SuccessState(movies));
      },
    );
  }

  _onMovieLoadMore(
    List<MovieItem> movies,
    Emitter<AppStates<Movie>> emit,
  ) {
    final currentState = state as SuccessState<Movie>;
    final currentMovies = currentState.data.data;
    final updatedMovies = [...currentMovies, ...movies];
    emit(AppStates.success(currentState.data.copyWith(data: updatedMovies)));
  }
}
