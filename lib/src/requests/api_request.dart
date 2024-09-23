import 'package:dio/dio.dart';

import '../responces/api_result.dart';

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
      return Failed(
        e.toString(),
        statusCode: e.response?.statusCode ?? -1,
      );
    } catch (e) {
      return Failed(
        e.toString(),
        statusCode: -1,
      );
    }
  }
}
