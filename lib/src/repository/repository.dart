import 'package:dio/dio.dart';

base class Repository {
  final Dio client;

  const Repository({
    required this.client,
  });
}
