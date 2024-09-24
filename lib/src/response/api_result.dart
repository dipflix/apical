// ignore_for_file: avoid_annotating_with_dynamic, always_use_package_imports

import 'dart:async';
import 'dart:io';

import 'package:apical/src/features/status_validator.dart';
import 'package:dio/dio.dart';

abstract base class ApicalResult<T> {
  final int statusCode;

  ApicalResult({
    required this.statusCode,
  });

  factory ApicalResult.map(
    Response<dynamic> response,
    T Function(Response<dynamic> response) mapper,
  ) {
    if (response.isError) {
      return Failed.fromResponse(
        response,
      );
    } else if (response.isSuccessful) {
      return Success(
        mapper(response),
        statusCode: response.statusCode ?? -1,
      );
    } else {
      return InternalError();
    }
  }

  FutureOr<D?> when<D>({
    FutureOr<D> Function(T data)? success,
    FutureOr<D> Function(Failed<T> data)? onError,
    FutureOr<D> Function(CancelResponse data)? onCancel,
  }) {
    if (this is Success<T>) {
      return success?.call((this as Success<T>).data);
    } else if (this is Failed<T>) {
      return onError?.call(this as Failed<T>);
    } else if (this is CancelResponse) {
      return onCancel?.call(this as CancelResponse);
    } else {
      return onError?.call(
        Failed(
          "Unhandled case",
          stackTrace: StackTrace.current,
          statusCode: statusCode,
        ),
      );
    }
  }
}

final class Success<T> extends ApicalResult<T> {
  final T data;

  Success(
    this.data, {
    required super.statusCode,
  });
}

final class SuccessPaginated<T> extends ApicalResult<T> {
  final T data;

  SuccessPaginated(
    this.data, {
    required super.statusCode,
  });
}

base class Failed<T> extends ApicalResult<T> {
  dynamic errors;
  final StackTrace stackTrace;

  Failed(
    this.errors, {
    required this.stackTrace,
    required super.statusCode,
  });

  static Failed<T> fromResponse<T>(Response<dynamic> response) {
    if (response.data is Map) {
      final Map<dynamic, dynamic> data = response.data;
      if (data.containsKey("message")) {
        return ServerError.fromResponse(response);
      } else if (data.containsKey("errors")) {
        return ServerFormError.fromResponse(response);
      }
    }

    final message = response.statusMessage ?? "Server error";
    return ServerError(
      message,
      statusCode: response.statusCode ?? -1,
      stackTrace: StackTrace.fromString(message),
    );
  }
}

final class CancelResponse<T> extends ApicalResult<T> {
  CancelResponse({
    required super.statusCode,
  });
}

final class ServerFormError<T> extends Failed<T> {
  static const String _jsonNodeErrors = "errors";

  ServerFormError(
    super.errors, {
    required super.statusCode,
    required super.stackTrace,
  });

  static ServerFormError<T> fromResponse<T>(Response<dynamic> response) {
    return ServerFormError(
      response.data[_jsonNodeErrors],
      stackTrace: StackTrace.fromString(response.statusMessage ?? ""),
      statusCode: response.statusCode ?? -1,
    );
  }
}

final class ServerError<T> extends Failed<T> {
  static const String _jsonNodeErrors = "message";

  ServerError(
    super.errors, {
    required super.statusCode,
    required super.stackTrace,
  });

  static ServerError<T> fromResponse<T>(Response<dynamic> response) {
    return ServerError(
      response.data[_jsonNodeErrors],
      stackTrace: StackTrace.fromString(response.statusMessage ?? ""),
      statusCode: -1,
    );
  }
}

final class NetworkError<T> extends Failed<T> {
  NetworkError(
    super.errors, {
    required super.statusCode,
    required super.stackTrace,
  });
}

final class InternalError<T> extends Failed<T> {
  InternalError()
      : super(
          List.empty(),
          stackTrace: StackTrace.current,
          statusCode: HttpStatus.internalServerError,
        );
}
