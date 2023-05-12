// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Movie _$$_MovieFromJson(Map<String, dynamic> json) => _$_Movie(
      status: json['status'] as String,
      data: (json['data'] as List<dynamic>)
          .map((e) => MovieItemModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      info: json['info'],
    );

Map<String, dynamic> _$$_MovieToJson(_$_Movie instance) {
  final val = <String, dynamic>{
    'status': instance.status,
    'data': instance.data,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('info', instance.info);
  return val;
}
