// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_item_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MovieItemModel _$MovieItemModelFromJson(Map<String, dynamic> json) {
  return _MovieItemModel.fromJson(json);
}

/// @nodoc
mixin _$MovieItemModel {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  DateTime get createdDate => throw _privateConstructorUsedError;
  String? get poster => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MovieItemModelCopyWith<MovieItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieItemModelCopyWith<$Res> {
  factory $MovieItemModelCopyWith(
          MovieItemModel value, $Res Function(MovieItemModel) then) =
      _$MovieItemModelCopyWithImpl<$Res, MovieItemModel>;
  @useResult
  $Res call(
      {int id,
      String title,
      String description,
      DateTime createdDate,
      String? poster});
}

/// @nodoc
class _$MovieItemModelCopyWithImpl<$Res, $Val extends MovieItemModel>
    implements $MovieItemModelCopyWith<$Res> {
  _$MovieItemModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? createdDate = null,
    Object? poster = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      createdDate: null == createdDate
          ? _value.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      poster: freezed == poster
          ? _value.poster
          : poster // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MovieItemModelCopyWith<$Res>
    implements $MovieItemModelCopyWith<$Res> {
  factory _$$_MovieItemModelCopyWith(
          _$_MovieItemModel value, $Res Function(_$_MovieItemModel) then) =
      __$$_MovieItemModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String title,
      String description,
      DateTime createdDate,
      String? poster});
}

/// @nodoc
class __$$_MovieItemModelCopyWithImpl<$Res>
    extends _$MovieItemModelCopyWithImpl<$Res, _$_MovieItemModel>
    implements _$$_MovieItemModelCopyWith<$Res> {
  __$$_MovieItemModelCopyWithImpl(
      _$_MovieItemModel _value, $Res Function(_$_MovieItemModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? createdDate = null,
    Object? poster = freezed,
  }) {
    return _then(_$_MovieItemModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      createdDate: null == createdDate
          ? _value.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      poster: freezed == poster
          ? _value.poster
          : poster // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MovieItemModel implements _MovieItemModel {
  const _$_MovieItemModel(
      {required this.id,
      required this.title,
      required this.description,
      required this.createdDate,
      this.poster});

  factory _$_MovieItemModel.fromJson(Map<String, dynamic> json) =>
      _$$_MovieItemModelFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  final String description;
  @override
  final DateTime createdDate;
  @override
  final String? poster;

  @override
  String toString() {
    return 'MovieItemModel(id: $id, title: $title, description: $description, createdDate: $createdDate, poster: $poster)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MovieItemModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.createdDate, createdDate) ||
                other.createdDate == createdDate) &&
            (identical(other.poster, poster) || other.poster == poster));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, title, description, createdDate, poster);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MovieItemModelCopyWith<_$_MovieItemModel> get copyWith =>
      __$$_MovieItemModelCopyWithImpl<_$_MovieItemModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MovieItemModelToJson(
      this,
    );
  }
}

abstract class _MovieItemModel implements MovieItemModel {
  const factory _MovieItemModel(
      {required final int id,
      required final String title,
      required final String description,
      required final DateTime createdDate,
      final String? poster}) = _$_MovieItemModel;

  factory _MovieItemModel.fromJson(Map<String, dynamic> json) =
      _$_MovieItemModel.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  String get description;
  @override
  DateTime get createdDate;
  @override
  String? get poster;
  @override
  @JsonKey(ignore: true)
  _$$_MovieItemModelCopyWith<_$_MovieItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}
