import 'package:apical/src/response/api_result.dart';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ApicalResult.map', () {
    test('should return Success when response is successful', () {
      // Arrange
      final response = Response(
        requestOptions: RequestOptions(path: ''),
        data: {'key': 'value'},
        statusCode: 200,
      );
      T mapper<T>(Response<dynamic> response) {
        return response.data as T;
      }

      // Act
      final result = ApicalResult.map(response, mapper);

      // Assert
      expect(result, isA<Success>());
      result.when(
        success: (data, response) {
          expect(data, {'key': 'value'});
          expect(response?.statusCode, 200);
        },
        failed: (_, _, _) => fail('should not be Failed'),
        canceled: (_) => fail('should not be Canceled'),
        serverError: (_, _, _) => fail('should not be ServerError'),
        networkError: (_, _, _) => fail('should not be NetworkError'),
        internalError: () => fail('should not be InternalError'),
      );
    });

    test('should return Failed when response is an error', () {
      // Arrange
      final response = Response(
        requestOptions: RequestOptions(path: ''),
        statusCode: 404,
        statusMessage: 'Not Found',
      );
      T mapper<T>(Response<dynamic> response) {
        return response.data as T;
      }

      // Act
      final result = ApicalResult.map(response, mapper);

      // Assert
      expect(result, isA<Failed>());
      result.when(
        success: (_, __) => fail('should not be Success'),
        failed: (errors, stackTrace, response) {
          expect(errors, 'Not Found');
          expect(response?.statusCode, 404);
        },
        canceled: (_) => fail('should not be Canceled'),
        serverError: (_, _, _) => fail('should not be ServerError'),
        networkError: (_, _, _) => fail('should not be NetworkError'),
        internalError: () => fail('should not be InternalError'),
      );
    });

    test('should return InternalError for other cases', () {
      // Arrange
      final response = Response(
        requestOptions: RequestOptions(path: ''),
        statusCode:
            304, // Not an error, but not explicitly successful in the map function
      );
      T mapper<T>(Response<dynamic> response) {
        return response.data as T;
      }

      // Act
      final result = ApicalResult.map(response, mapper);

      // Assert
      expect(result, isA<InternalError>());
    });
  });
}
