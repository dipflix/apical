import 'package:dio/dio.dart';

base class Repository {
  final Dio client;

  Repository({
    required this.client,
  });
}
