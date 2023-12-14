import 'package:dio/dio.dart';

class APiService {
  final String _baseUrl = 'https://api.alquran.cloud/v1/';
  final Dio _dio;

  APiService(
    this._dio,
  );

  Future<Map<String, dynamic>> get({required String endPoint}) async {
    final response = await _dio.get('$_baseUrl $endPoint');
    return response.data;
  }
}
