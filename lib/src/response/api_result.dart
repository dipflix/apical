import 'dart:async';
import 'dart:io';

import 'package:apical/src/features/status_validator.dart';
import 'package:dio/dio.dart';

abstract base class ApicalResult<T> {
  final int statusCode;
  final Response<dynamic>? response;

  ApicalResult({
    required this.statusCode,
    required this.response,
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
        response: response,
        statusCode: response.statusCode ?? -1,
      );
    } else {
      return InternalError();
    }
  }

  FutureOr<D>? when<D>({
    FutureOr<D> Function(T data)? success,
    FutureOr<D> Function(Failed<T> data)? failed,
    FutureOr<D> Function(CancelResponse data)? canceled,
  }) {
    throw UnimplementedError();
  }
}

final class Success<T> extends ApicalResult<T> {
  final T data;

  Success(
    this.data, {
    required super.statusCode,
    required super.response,
  });

  @override
  FutureOr<D>? when<D>({
    FutureOr<D> Function(T data)? success,
    FutureOr<D> Function(Failed<T> data)? failed,
    FutureOr<D> Function(CancelResponse data)? canceled,
  }) {
    return success?.call(this.data);
  }
}

base class Failed<T> extends ApicalResult<T> {
  dynamic errors;
  final StackTrace stackTrace;

  Failed(
    this.errors, {
    required this.stackTrace,
    required super.statusCode,
    required super.response,
  });

  static Failed<T> fromResponse<T>(Response<dynamic> response) {
    if (response.data is Map) {
      final Map<dynamic, dynamic> data = response.data;

      return ServerError.fromResponse(response);
    }

    final message = response.statusMessage ?? "Server error";
    return ServerError(
      message,
      response: response,
      statusCode: response.statusCode ?? -1,
      stackTrace: StackTrace.fromString(message),
    );
  }

  @override
  FutureOr<D>? when<D>({
    FutureOr<D> Function(T data)? success,
    FutureOr<D> Function(Failed<T> data)? failed,
    FutureOr<D> Function(CancelResponse data)? canceled,
  }) {
    return failed?.call(this);
  }
}

final class CancelResponse<T> extends ApicalResult<T> {
  CancelResponse({
    required super.statusCode,
    required super.response,
  });

  @override
  FutureOr<D>? when<D>({
    FutureOr<D> Function(T data)? success,
    FutureOr<D> Function(Failed<T> data)? failed,
    FutureOr<D> Function(CancelResponse data)? canceled,
  }) {
    return canceled?.call(this);
  }
}

final class ServerError<T> extends Failed<T> {
  static const String _jsonNodeErrors = "message";

  ServerError(
    super.errors, {
    required super.statusCode,
    required super.stackTrace,
    required super.response,
  });

  static ServerError<T> fromResponse<T>(Response<dynamic> response) {
    return ServerError(
      response.data[_jsonNodeErrors],
      response: response,
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
    required super.response,
  });
}

final class InternalError<T> extends Failed<T> {
  InternalError()
      : super(
          List.empty(),
          response: Response(
            requestOptions: RequestOptions(),
          ),
          stackTrace: StackTrace.current,
          statusCode: HttpStatus.internalServerError,
        );
}
