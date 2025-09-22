import 'package:dio/dio.dart';
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
    } on DioException catch (e, stackTrace) {
      if (e.type == DioExceptionType.cancel) {
        return ApicalResult.canceled(
          response: Response(
            requestOptions: RequestOptions(),
          ),
        );
      }

      if (kDebugMode) {
        print(e);
        print(stackTrace);
      }

      return ApicalResult.failed(
        errors: e.response?.data ?? e.message ?? 'Error',
        stackTrace: stackTrace,
        response: e.response,
      );
    } catch (e, stackTrace) {
      if (kDebugMode) {
        print(e);
        print(stackTrace);
      }

      return ApicalResult.failed(
        errors: e,
        stackTrace: stackTrace,
        response: Response(requestOptions: RequestOptions()),
      );
    }
  }
}
