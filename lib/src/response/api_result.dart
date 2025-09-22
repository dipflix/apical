import 'package:apical/apical.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_result.freezed.dart';

@freezed
sealed class ApicalResult<T> with _$ApicalResult<T> {
  const ApicalResult._();

  const factory ApicalResult.success({
    required T data,
    required Response<dynamic>? response,
  }) = Success<T>;

  const factory ApicalResult.failed({
    required dynamic errors,
    required StackTrace stackTrace,
    required Response<dynamic>? response,
  }) = Failed<T>;

  const factory ApicalResult.canceled({
    required Response<dynamic>? response,
  }) = CancelResponse<T>;

  const factory ApicalResult.serverError({
    required dynamic errors,
    required StackTrace stackTrace,
    required Response<dynamic>? response,
  }) = ServerError<T>;

  const factory ApicalResult.networkError({
    required dynamic errors,
    required StackTrace stackTrace,
    required Response<dynamic>? response,
  }) = NetworkError<T>;

  const factory ApicalResult.internalError() = InternalError<T>;

  /// Удобный геттер для statusCode
  int? get statusCode => whenOrNull(
    success: (_, r) => r?.statusCode,
    failed: (_, __, r) => r?.statusCode,
    canceled: (r) => r?.statusCode,
    serverError: (_, __, r) => r?.statusCode,
    networkError: (_, __, r) => r?.statusCode,
    internalError: () => -1,
  );

  /// Mapping фабрика
  factory ApicalResult.map(
      Response<dynamic> response,
      T Function(Response<dynamic> response) mapper,
      ) {
    if (response.isError) {
      return ApicalResult.failed(
        errors: response.statusMessage ?? 'Error',
        stackTrace: StackTrace.current,
        response: response,
      );
    } else if (response.isSuccessful) {
      return ApicalResult.success(
        data: mapper(response),
        response: response,
      );
    } else {
      return const ApicalResult.internalError();
    }
  }
}
