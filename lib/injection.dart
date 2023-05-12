import 'package:felem/core/data/datasource/movie_remote_data_source.dart';
import 'package:felem/core/data/repositories/movie_repository_impl.dart';
import 'package:felem/core/domain/repositories/movie_repositories.dart';
import 'package:felem/core/network/network_service.dart';
import 'package:felem/movie/domain/usecase/get_movies.dart';
import 'package:felem/movie/domain/usecase/insert_movie.dart';
import 'package:felem/movie/presentation/bloc/create_movie_bloc.dart';
import 'package:felem/movie/presentation/bloc/movie_bloc.dart';
import 'package:get_it/get_it.dart';

final di = GetIt.instance;
void init() {
  di.registerFactory(() => MovieBloc(di()));
  di.registerFactory(() => CreateMovieBloc(di()));
  di.registerLazySingleton(() => GetMovies(di()));
  di.registerLazySingleton(() => InsertMovie(di()));
  di.registerLazySingleton<MovieRemoteDataSource>(
    () => MovieRemoteDataSourceImpl(di()),
  );
  di.registerLazySingleton<MovieRepository>(
    () => MovieRepositoryImpl(di()),
  );
  di.registerLazySingleton(() => NetworkService());
}
