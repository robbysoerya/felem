// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_create_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MovieCreateModel _$$_MovieCreateModelFromJson(Map<String, dynamic> json) =>
    _$_MovieCreateModel(
      status: json['status'] as String,
      data: json['data'] as String,
      info: json['info'],
    );

Map<String, dynamic> _$$_MovieCreateModelToJson(_$_MovieCreateModel instance) {
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
