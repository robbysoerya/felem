// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AppStates<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(Failure failure) error,
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function(Failure failure)? error,
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T data)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(Failure failure)? error,
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmptyState<T> value) empty,
    required TResult Function(ErrorState<T> value) error,
    required TResult Function(InitialState<T> value) initial,
    required TResult Function(LoadingState<T> value) loading,
    required TResult Function(SuccessState<T> value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmptyState<T> value)? empty,
    TResult? Function(ErrorState<T> value)? error,
    TResult? Function(InitialState<T> value)? initial,
    TResult? Function(LoadingState<T> value)? loading,
    TResult? Function(SuccessState<T> value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyState<T> value)? empty,
    TResult Function(ErrorState<T> value)? error,
    TResult Function(InitialState<T> value)? initial,
    TResult Function(LoadingState<T> value)? loading,
    TResult Function(SuccessState<T> value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppStatesCopyWith<T, $Res> {
  factory $AppStatesCopyWith(
          AppStates<T> value, $Res Function(AppStates<T>) then) =
      _$AppStatesCopyWithImpl<T, $Res, AppStates<T>>;
}

/// @nodoc
class _$AppStatesCopyWithImpl<T, $Res, $Val extends AppStates<T>>
    implements $AppStatesCopyWith<T, $Res> {
  _$AppStatesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$EmptyStateCopyWith<T, $Res> {
  factory _$$EmptyStateCopyWith(
          _$EmptyState<T> value, $Res Function(_$EmptyState<T>) then) =
      __$$EmptyStateCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$EmptyStateCopyWithImpl<T, $Res>
    extends _$AppStatesCopyWithImpl<T, $Res, _$EmptyState<T>>
    implements _$$EmptyStateCopyWith<T, $Res> {
  __$$EmptyStateCopyWithImpl(
      _$EmptyState<T> _value, $Res Function(_$EmptyState<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$EmptyState<T> implements EmptyState<T> {
  const _$EmptyState();

  @override
  String toString() {
    return 'AppStates<$T>.empty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EmptyState<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(Failure failure) error,
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data) success,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function(Failure failure)? error,
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T data)? success,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(Failure failure)? error,
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? success,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmptyState<T> value) empty,
    required TResult Function(ErrorState<T> value) error,
    required TResult Function(InitialState<T> value) initial,
    required TResult Function(LoadingState<T> value) loading,
    required TResult Function(SuccessState<T> value) success,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmptyState<T> value)? empty,
    TResult? Function(ErrorState<T> value)? error,
    TResult? Function(InitialState<T> value)? initial,
    TResult? Function(LoadingState<T> value)? loading,
    TResult? Function(SuccessState<T> value)? success,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyState<T> value)? empty,
    TResult Function(ErrorState<T> value)? error,
    TResult Function(InitialState<T> value)? initial,
    TResult Function(LoadingState<T> value)? loading,
    TResult Function(SuccessState<T> value)? success,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class EmptyState<T> implements AppStates<T> {
  const factory EmptyState() = _$EmptyState<T>;
}

/// @nodoc
abstract class _$$ErrorStateCopyWith<T, $Res> {
  factory _$$ErrorStateCopyWith(
          _$ErrorState<T> value, $Res Function(_$ErrorState<T>) then) =
      __$$ErrorStateCopyWithImpl<T, $Res>;
  @useResult
  $Res call({Failure failure});

  $FailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$ErrorStateCopyWithImpl<T, $Res>
    extends _$AppStatesCopyWithImpl<T, $Res, _$ErrorState<T>>
    implements _$$ErrorStateCopyWith<T, $Res> {
  __$$ErrorStateCopyWithImpl(
      _$ErrorState<T> _value, $Res Function(_$ErrorState<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$ErrorState<T>(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $FailureCopyWith<$Res> get failure {
    return $FailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$ErrorState<T> implements ErrorState<T> {
  const _$ErrorState(this.failure);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'AppStates<$T>.error(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorState<T> &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorStateCopyWith<T, _$ErrorState<T>> get copyWith =>
      __$$ErrorStateCopyWithImpl<T, _$ErrorState<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(Failure failure) error,
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data) success,
  }) {
    return error(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function(Failure failure)? error,
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T data)? success,
  }) {
    return error?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(Failure failure)? error,
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? success,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmptyState<T> value) empty,
    required TResult Function(ErrorState<T> value) error,
    required TResult Function(InitialState<T> value) initial,
    required TResult Function(LoadingState<T> value) loading,
    required TResult Function(SuccessState<T> value) success,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmptyState<T> value)? empty,
    TResult? Function(ErrorState<T> value)? error,
    TResult? Function(InitialState<T> value)? initial,
    TResult? Function(LoadingState<T> value)? loading,
    TResult? Function(SuccessState<T> value)? success,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyState<T> value)? empty,
    TResult Function(ErrorState<T> value)? error,
    TResult Function(InitialState<T> value)? initial,
    TResult Function(LoadingState<T> value)? loading,
    TResult Function(SuccessState<T> value)? success,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ErrorState<T> implements AppStates<T> {
  const factory ErrorState(final Failure failure) = _$ErrorState<T>;

  Failure get failure;
  @JsonKey(ignore: true)
  _$$ErrorStateCopyWith<T, _$ErrorState<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InitialStateCopyWith<T, $Res> {
  factory _$$InitialStateCopyWith(
          _$InitialState<T> value, $Res Function(_$InitialState<T>) then) =
      __$$InitialStateCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$InitialStateCopyWithImpl<T, $Res>
    extends _$AppStatesCopyWithImpl<T, $Res, _$InitialState<T>>
    implements _$$InitialStateCopyWith<T, $Res> {
  __$$InitialStateCopyWithImpl(
      _$InitialState<T> _value, $Res Function(_$InitialState<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialState<T> implements InitialState<T> {
  const _$InitialState();

  @override
  String toString() {
    return 'AppStates<$T>.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialState<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(Failure failure) error,
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data) success,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function(Failure failure)? error,
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T data)? success,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(Failure failure)? error,
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? success,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmptyState<T> value) empty,
    required TResult Function(ErrorState<T> value) error,
    required TResult Function(InitialState<T> value) initial,
    required TResult Function(LoadingState<T> value) loading,
    required TResult Function(SuccessState<T> value) success,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmptyState<T> value)? empty,
    TResult? Function(ErrorState<T> value)? error,
    TResult? Function(InitialState<T> value)? initial,
    TResult? Function(LoadingState<T> value)? loading,
    TResult? Function(SuccessState<T> value)? success,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyState<T> value)? empty,
    TResult Function(ErrorState<T> value)? error,
    TResult Function(InitialState<T> value)? initial,
    TResult Function(LoadingState<T> value)? loading,
    TResult Function(SuccessState<T> value)? success,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class InitialState<T> implements AppStates<T> {
  const factory InitialState() = _$InitialState<T>;
}

/// @nodoc
abstract class _$$LoadingStateCopyWith<T, $Res> {
  factory _$$LoadingStateCopyWith(
          _$LoadingState<T> value, $Res Function(_$LoadingState<T>) then) =
      __$$LoadingStateCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$LoadingStateCopyWithImpl<T, $Res>
    extends _$AppStatesCopyWithImpl<T, $Res, _$LoadingState<T>>
    implements _$$LoadingStateCopyWith<T, $Res> {
  __$$LoadingStateCopyWithImpl(
      _$LoadingState<T> _value, $Res Function(_$LoadingState<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingState<T> implements LoadingState<T> {
  const _$LoadingState();

  @override
  String toString() {
    return 'AppStates<$T>.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingState<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(Failure failure) error,
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data) success,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function(Failure failure)? error,
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T data)? success,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(Failure failure)? error,
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmptyState<T> value) empty,
    required TResult Function(ErrorState<T> value) error,
    required TResult Function(InitialState<T> value) initial,
    required TResult Function(LoadingState<T> value) loading,
    required TResult Function(SuccessState<T> value) success,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmptyState<T> value)? empty,
    TResult? Function(ErrorState<T> value)? error,
    TResult? Function(InitialState<T> value)? initial,
    TResult? Function(LoadingState<T> value)? loading,
    TResult? Function(SuccessState<T> value)? success,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyState<T> value)? empty,
    TResult Function(ErrorState<T> value)? error,
    TResult Function(InitialState<T> value)? initial,
    TResult Function(LoadingState<T> value)? loading,
    TResult Function(SuccessState<T> value)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingState<T> implements AppStates<T> {
  const factory LoadingState() = _$LoadingState<T>;
}

/// @nodoc
abstract class _$$SuccessStateCopyWith<T, $Res> {
  factory _$$SuccessStateCopyWith(
          _$SuccessState<T> value, $Res Function(_$SuccessState<T>) then) =
      __$$SuccessStateCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T data});
}

/// @nodoc
class __$$SuccessStateCopyWithImpl<T, $Res>
    extends _$AppStatesCopyWithImpl<T, $Res, _$SuccessState<T>>
    implements _$$SuccessStateCopyWith<T, $Res> {
  __$$SuccessStateCopyWithImpl(
      _$SuccessState<T> _value, $Res Function(_$SuccessState<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$SuccessState<T>(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$SuccessState<T> implements SuccessState<T> {
  const _$SuccessState(this.data);

  @override
  final T data;

  @override
  String toString() {
    return 'AppStates<$T>.success(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessState<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessStateCopyWith<T, _$SuccessState<T>> get copyWith =>
      __$$SuccessStateCopyWithImpl<T, _$SuccessState<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(Failure failure) error,
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data) success,
  }) {
    return success(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function(Failure failure)? error,
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T data)? success,
  }) {
    return success?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(Failure failure)? error,
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmptyState<T> value) empty,
    required TResult Function(ErrorState<T> value) error,
    required TResult Function(InitialState<T> value) initial,
    required TResult Function(LoadingState<T> value) loading,
    required TResult Function(SuccessState<T> value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmptyState<T> value)? empty,
    TResult? Function(ErrorState<T> value)? error,
    TResult? Function(InitialState<T> value)? initial,
    TResult? Function(LoadingState<T> value)? loading,
    TResult? Function(SuccessState<T> value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyState<T> value)? empty,
    TResult Function(ErrorState<T> value)? error,
    TResult Function(InitialState<T> value)? initial,
    TResult Function(LoadingState<T> value)? loading,
    TResult Function(SuccessState<T> value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class SuccessState<T> implements AppStates<T> {
  const factory SuccessState(final T data) = _$SuccessState<T>;

  T get data;
  @JsonKey(ignore: true)
  _$$SuccessStateCopyWith<T, _$SuccessState<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
