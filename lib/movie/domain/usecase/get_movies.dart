import 'package:dartz/dartz.dart';
import 'package:felem/core/domain/entities/movie.dart';
import 'package:felem/core/domain/repositories/movie_repositories.dart';
import 'package:felem/core/utils/failure.dart';

class GetMovies {
  final MovieRepository repository;
  GetMovies(this.repository);

  Future<Either<Failure, Movie>> execute(int size, int page) {
    return repository.getMovies(size, page);
  }
}
