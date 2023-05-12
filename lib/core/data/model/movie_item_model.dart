import 'package:felem/core/domain/entities/movie_item.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_item_model.freezed.dart';
part 'movie_item_model.g.dart';

@freezed
class MovieItemModel with _$MovieItemModel {
  const factory MovieItemModel({
    required int id,
    required String title,
    required String description,
    required DateTime createdDate,
    String? poster,
  }) = _MovieItemModel;

  factory MovieItemModel.fromJson(Map<String, dynamic> json) =>
      _$MovieItemModelFromJson(json);
}

extension MovieItemModelX on MovieItemModel {
  MovieItem toEntity() {
    return MovieItem(
      id: id,
      title: title,
      description: description,
      poster: poster,
      createdDate: createdDate,
    );
  }
}
