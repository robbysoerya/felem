part of 'create_movie_bloc.dart';

@freezed
class CreateMovieEvent with _$CreateMovieEvent {
  const factory CreateMovieEvent.started({
    required String title,
    required String desc,
    required String poster,
  }) = _Started;
}
