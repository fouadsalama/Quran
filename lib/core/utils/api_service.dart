import 'package:dio/dio.dart';

class APiService {
  final Dio _dio;

  APiService(
    this._dio,
  );

  Future<Map<String, dynamic>> get({required String url}) async {
    final response = await _dio.get(url);

    return response.data;
  }
}
