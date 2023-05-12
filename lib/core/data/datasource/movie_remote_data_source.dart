import 'package:dio/dio.dart';
import 'package:felem/core/data/model/movie_create_model.dart';
import 'package:felem/core/data/model/movie_model.dart';
import 'package:felem/core/domain/entities/movie.dart';
import 'package:felem/core/domain/entities/movie_create.dart';
import 'package:felem/core/network/network_service.dart';
import 'package:felem/core/utils/exception.dart';

sealed class MovieRemoteDataSource {
  Future<Movie> getMovies(int size, int page);
  Future<MovieCreate> createMovie(
    String title,
    String description,
    String poster,
  );
}

class MovieRemoteDataSourceImpl implements MovieRemoteDataSource {
  const MovieRemoteDataSourceImpl(this.ns);
  final NetworkService ns;

  @override
  Future<Movie> getMovies(int size, int page) async {
    final param = {'size': size, 'page': page};
    final resp = await ns.get('/movie', queryParameters: param);

    if (resp.statusCode == 200) {
      return MovieModel.fromJson(resp.data).toEntity();
    }
    throw ServerException();
  }

  @override
  Future<MovieCreate> createMovie(
    String title,
    String description,
    String poster,
  ) async {
    final formData = FormData.fromMap(
      {
        'title': title,
        'description': description,
        'poster': MultipartFile.fromString(poster),
      },
    );
    final resp = await ns.post('/movie', data: formData);

    if (resp.statusCode == 201) {
      return MovieCreateModel.fromJson(resp.data).toEntity();
    }
    throw ServerException();
  }
}
