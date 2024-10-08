import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

import '../response/api_result.dart';

class ApicalRequest<T> {
  final Future<Response<dynamic>> Function(CancelToken cancelToken) _action;
  final T Function(Response<dynamic> response) _mapper;

  ApicalRequest(this._action, this._mapper);

  CancelToken? _cancelToken;

  void cancel({String? reason}) {
    if (_cancelToken != null && !_cancelToken!.isCancelled) {
      _cancelToken!.cancel(reason);
    }
  }

  Future<ApicalResult<T>> send() async {
    cancel();
    _cancelToken = CancelToken();

    try {
      final response = await _action(_cancelToken!);

      return ApicalResult.map(response, _mapper);
    } on DioException catch (e) {
      if (e.type == DioExceptionType.cancel) {
        return CancelResponse(
          statusCode: -2,
        );
      }

      if (kDebugMode) {
        print(e);
        print(e.stackTrace);
      }

      return Failed(
        e,
        stackTrace: e.stackTrace,
        statusCode: e.response?.statusCode ?? -1,
      );
    } catch (e, stackTrace) {
      if (kDebugMode) {
        print(e);
        print(stackTrace);
      }
      return Failed(
        e,
        stackTrace: stackTrace,
        statusCode: -1,
      );
    }
  }
}
