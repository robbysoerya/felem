import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_item.freezed.dart';

@freezed
class MovieItem with _$MovieItem {
  const factory MovieItem({
    required int id,
    required String title,
    required String description,
    required DateTime createdDate,
    String? poster,
  }) = _MovieItem;
}
