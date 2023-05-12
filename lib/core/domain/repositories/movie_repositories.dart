import 'package:dartz/dartz.dart';
import 'package:felem/core/domain/entities/movie.dart';
import 'package:felem/core/domain/entities/movie_create.dart';
import 'package:felem/core/utils/failure.dart';

abstract class MovieRepository {
  Future<Either<Failure, Movie>> getMovies(int size, int page);
  Future<Either<Failure, MovieCreate>> createMovie({
    required String title,
    required String description,
    required String poster,
  });
}
