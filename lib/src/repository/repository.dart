import 'package:apical/src/native_apical_client.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

sealed class Repository {
  Dio get client => GetIt.instance.get<NativeApicalClient>();
}
