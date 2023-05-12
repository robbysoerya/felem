import 'package:freezed_annotation/freezed_annotation.dart';

import 'failure.dart';

part 'app_state.freezed.dart';

@freezed
class AppStates<T> with _$AppStates<T> {
  const factory AppStates.empty() = EmptyState;

  const factory AppStates.error(Failure failure) = ErrorState;

  const factory AppStates.initial() = InitialState;

  const factory AppStates.loading() = LoadingState;

  const factory AppStates.success(T data) = SuccessState<T>;
}