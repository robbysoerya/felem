import 'package:felem/core/domain/entities/movie_create.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_create_model.freezed.dart';
part 'movie_create_model.g.dart';

@freezed
class MovieCreateModel with _$MovieCreateModel {
  const factory MovieCreateModel({
    required String status,
    required String data,
    required dynamic info,
  }) = _MovieCreateModel;

  factory MovieCreateModel.fromJson(Map<String, dynamic> json) =>
      _$MovieCreateModelFromJson(json);
}

extension MovieCreateModelX on MovieCreateModel {
  MovieCreate toEntity() {
    return MovieCreate(
      status: status,
      data: data,
      info: info,
    );
  }
}
