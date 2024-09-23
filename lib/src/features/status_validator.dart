import 'dart:io';

import 'package:dio/dio.dart';

extension HttpResponseExtension on Response<dynamic> {
  bool get isInformation => (statusCode! ~/ 100) == 1;

  bool get isSuccessful => (statusCode! ~/ 100) == 2;

  bool get isRedirection => (statusCode! ~/ 100) == 3;

  bool get isError => (statusCode! ~/ 100) == 4;

  bool get isServerError => (statusCode! ~/ 100) == 5;

  bool get isUnauthorized => statusCode! == HttpStatus.unauthorized;
}
