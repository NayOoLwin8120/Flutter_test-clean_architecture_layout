import 'package:dio/dio.dart';

class Http {
  static final http = Dio();
  static Future<Response> get(String path) {
    return http.get(path);
  }
}
