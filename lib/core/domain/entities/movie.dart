import 'package:felem/core/domain/entities/movie_item.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie.freezed.dart';

@freezed
class Movie with _$Movie {
  const factory Movie({
    required String status,
    required List<MovieItem> data,
    required dynamic info,
  }) = _Movie;
}
