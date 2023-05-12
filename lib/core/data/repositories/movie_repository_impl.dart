import 'package:dartz/dartz.dart';
import 'package:felem/core/data/datasource/movie_remote_data_source.dart';
import 'package:felem/core/domain/entities/movie.dart';
import 'package:felem/core/domain/entities/movie_create.dart';
import 'package:felem/core/domain/repositories/movie_repositories.dart';
import 'package:felem/core/utils/exception.dart';
import 'package:felem/core/utils/failure.dart';

class MovieRepositoryImpl implements MovieRepository {
  const MovieRepositoryImpl(this.remoteDataSource);
  final MovieRemoteDataSource remoteDataSource;

  @override
  Future<Either<Failure, Movie>> getMovies(int size, int page) async {
    try {
      final resp = await remoteDataSource.getMovies(size, page);
      return Right(resp);
    } on NetworkException {
      return const Left(NetworkFailure());
    } on SocketException {
      return const Left(SocketFailure());
    } catch (_) {
      return const Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, MovieCreate>> createMovie({
    required String title,
    required String description,
    required String poster,
  }) async {
    try {
      final resp = await remoteDataSource.createMovie(
        title,
        description,
        poster,
      );
      return Right(resp);
    } on NetworkException {
      return const Left(NetworkFailure());
    } on SocketException {
      return const Left(SocketFailure());
    } catch (_) {
      return const Left(ServerFailure());
    }
  }
}
