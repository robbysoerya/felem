// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_create_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MovieCreateModel _$MovieCreateModelFromJson(Map<String, dynamic> json) {
  return _MovieCreateModel.fromJson(json);
}

/// @nodoc
mixin _$MovieCreateModel {
  String get status => throw _privateConstructorUsedError;
  String get data => throw _privateConstructorUsedError;
  dynamic get info => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MovieCreateModelCopyWith<MovieCreateModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieCreateModelCopyWith<$Res> {
  factory $MovieCreateModelCopyWith(
          MovieCreateModel value, $Res Function(MovieCreateModel) then) =
      _$MovieCreateModelCopyWithImpl<$Res, MovieCreateModel>;
  @useResult
  $Res call({String status, String data, dynamic info});
}

/// @nodoc
class _$MovieCreateModelCopyWithImpl<$Res, $Val extends MovieCreateModel>
    implements $MovieCreateModelCopyWith<$Res> {
  _$MovieCreateModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? data = null,
    Object? info = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
      info: freezed == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MovieCreateModelCopyWith<$Res>
    implements $MovieCreateModelCopyWith<$Res> {
  factory _$$_MovieCreateModelCopyWith(
          _$_MovieCreateModel value, $Res Function(_$_MovieCreateModel) then) =
      __$$_MovieCreateModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String status, String data, dynamic info});
}

/// @nodoc
class __$$_MovieCreateModelCopyWithImpl<$Res>
    extends _$MovieCreateModelCopyWithImpl<$Res, _$_MovieCreateModel>
    implements _$$_MovieCreateModelCopyWith<$Res> {
  __$$_MovieCreateModelCopyWithImpl(
      _$_MovieCreateModel _value, $Res Function(_$_MovieCreateModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? data = null,
    Object? info = freezed,
  }) {
    return _then(_$_MovieCreateModel(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
      info: freezed == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MovieCreateModel implements _MovieCreateModel {
  const _$_MovieCreateModel(
      {required this.status, required this.data, required this.info});

  factory _$_MovieCreateModel.fromJson(Map<String, dynamic> json) =>
      _$$_MovieCreateModelFromJson(json);

  @override
  final String status;
  @override
  final String data;
  @override
  final dynamic info;

  @override
  String toString() {
    return 'MovieCreateModel(status: $status, data: $data, info: $info)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MovieCreateModel &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.data, data) || other.data == data) &&
            const DeepCollectionEquality().equals(other.info, info));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, status, data, const DeepCollectionEquality().hash(info));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MovieCreateModelCopyWith<_$_MovieCreateModel> get copyWith =>
      __$$_MovieCreateModelCopyWithImpl<_$_MovieCreateModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MovieCreateModelToJson(
      this,
    );
  }
}

abstract class _MovieCreateModel implements MovieCreateModel {
  const factory _MovieCreateModel(
      {required final String status,
      required final String data,
      required final dynamic info}) = _$_MovieCreateModel;

  factory _MovieCreateModel.fromJson(Map<String, dynamic> json) =
      _$_MovieCreateModel.fromJson;

  @override
  String get status;
  @override
  String get data;
  @override
  dynamic get info;
  @override
  @JsonKey(ignore: true)
  _$$_MovieCreateModelCopyWith<_$_MovieCreateModel> get copyWith =>
      throw _privateConstructorUsedError;
}
