// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_create.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MovieCreate {
  String get status => throw _privateConstructorUsedError;
  String get data => throw _privateConstructorUsedError;
  dynamic get info => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MovieCreateCopyWith<MovieCreate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieCreateCopyWith<$Res> {
  factory $MovieCreateCopyWith(
          MovieCreate value, $Res Function(MovieCreate) then) =
      _$MovieCreateCopyWithImpl<$Res, MovieCreate>;
  @useResult
  $Res call({String status, String data, dynamic info});
}

/// @nodoc
class _$MovieCreateCopyWithImpl<$Res, $Val extends MovieCreate>
    implements $MovieCreateCopyWith<$Res> {
  _$MovieCreateCopyWithImpl(this._value, this._then);

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
abstract class _$$_MovieCreateCopyWith<$Res>
    implements $MovieCreateCopyWith<$Res> {
  factory _$$_MovieCreateCopyWith(
          _$_MovieCreate value, $Res Function(_$_MovieCreate) then) =
      __$$_MovieCreateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String status, String data, dynamic info});
}

/// @nodoc
class __$$_MovieCreateCopyWithImpl<$Res>
    extends _$MovieCreateCopyWithImpl<$Res, _$_MovieCreate>
    implements _$$_MovieCreateCopyWith<$Res> {
  __$$_MovieCreateCopyWithImpl(
      _$_MovieCreate _value, $Res Function(_$_MovieCreate) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? data = null,
    Object? info = freezed,
  }) {
    return _then(_$_MovieCreate(
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

class _$_MovieCreate implements _MovieCreate {
  const _$_MovieCreate(
      {required this.status, required this.data, required this.info});

  @override
  final String status;
  @override
  final String data;
  @override
  final dynamic info;

  @override
  String toString() {
    return 'MovieCreate(status: $status, data: $data, info: $info)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MovieCreate &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.data, data) || other.data == data) &&
            const DeepCollectionEquality().equals(other.info, info));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, status, data, const DeepCollectionEquality().hash(info));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MovieCreateCopyWith<_$_MovieCreate> get copyWith =>
      __$$_MovieCreateCopyWithImpl<_$_MovieCreate>(this, _$identity);
}

abstract class _MovieCreate implements MovieCreate {
  const factory _MovieCreate(
      {required final String status,
      required final String data,
      required final dynamic info}) = _$_MovieCreate;

  @override
  String get status;
  @override
  String get data;
  @override
  dynamic get info;
  @override
  @JsonKey(ignore: true)
  _$$_MovieCreateCopyWith<_$_MovieCreate> get copyWith =>
      throw _privateConstructorUsedError;
}
