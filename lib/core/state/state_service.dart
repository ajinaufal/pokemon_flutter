import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokemon_flutter/core/data/models/failures/failure.dart';

part 'state_service.freezed.dart';

@freezed
abstract class StateService<T> with _$StateService<T> {
  const factory StateService.initial() = Initial;
  const factory StateService.loading() = Loading;
  const factory StateService.empty() = Empty;
  const factory StateService.success(T data) = Success<T>;
  const factory StateService.error(Failure message) = Error;
}
