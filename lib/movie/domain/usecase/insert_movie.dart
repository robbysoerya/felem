import 'package:dartz/dartz.dart';
import 'package:felem/core/domain/entities/movie_create.dart';
import 'package:felem/core/domain/repositories/movie_repositories.dart';
import 'package:felem/core/utils/failure.dart';

class InsertMovie {
  final MovieRepository repository;
  InsertMovie(this.repository);

  Future<Either<Failure, MovieCreate>> execute({
    required String title,
    required String desc,
    required String poster,
  }) {
    return repository.createMovie(
      title: title,
      description: desc,
      poster: poster,
    );
  }
}
