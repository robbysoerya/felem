import 'package:felem/core/data/model/movie_item_model.dart';
import 'package:felem/core/domain/entities/movie.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_model.freezed.dart';
part 'movie_model.g.dart';

@freezed
class MovieModel with _$MovieModel {
  const factory MovieModel({
    required String status,
    required List<MovieItemModel> data,
    required dynamic info,
  }) = _Movie;

  factory MovieModel.fromJson(Map<String, dynamic> json) =>
      _$MovieModelFromJson(json);
}

extension MovieModelX on MovieModel {
  Movie toEntity() {
    return Movie(
      status: status,
      data: data.map((e) => e.toEntity()).toList(),
      info: info,
    );
  }
}
