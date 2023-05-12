import 'package:felem/core/domain/entities/movie_create.dart';
import 'package:felem/core/utils/app_state.dart';
import 'package:felem/movie/domain/usecase/insert_movie.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rxdart/rxdart.dart';

part 'create_movie_event.dart';
part 'create_movie_bloc.freezed.dart';

class CreateMovieBloc extends Bloc<CreateMovieEvent, AppStates<MovieCreate>> {
  CreateMovieBloc(this.insertMovie) : super(const InitialState()) {
    on<_Started>(_onCreateMovieStarted);
  }

  final InsertMovie insertMovie;

  final _posterController = BehaviorSubject<String?>.seeded(null);
  void changePoster(String path) => _posterController.sink.add(path);
  Stream<String?> get posterStream => _posterController.stream;
  String? get poster => _posterController.value;

  _onCreateMovieStarted(
    _Started event,
    Emitter<AppStates<MovieCreate>> emit,
  ) async {
    emit(const LoadingState());
    final result = await insertMovie.execute(
      title: event.title,
      desc: event.desc,
      poster: event.poster,
    );

    result.fold(
      (failure) => emit(ErrorState(failure)),
      (movies) => emit(SuccessState(movies)),
    );
  }
}
