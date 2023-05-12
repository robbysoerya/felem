// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_item_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MovieItemModel _$$_MovieItemModelFromJson(Map<String, dynamic> json) =>
    _$_MovieItemModel(
      id: json['id'] as int,
      title: json['title'] as String,
      description: json['description'] as String,
      createdDate: DateTime.parse(json['created_date'] as String),
      poster: json['poster'] as String?,
    );

Map<String, dynamic> _$$_MovieItemModelToJson(_$_MovieItemModel instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'title': instance.title,
    'description': instance.description,
    'created_date': instance.createdDate.toIso8601String(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('poster', instance.poster);
  return val;
}
