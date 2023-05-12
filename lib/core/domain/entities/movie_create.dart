import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_create.freezed.dart';

@freezed
class MovieCreate with _$MovieCreate {
  const factory MovieCreate({
    required String status,
    required String data,
    required dynamic info,
  }) = _MovieCreate;
}
