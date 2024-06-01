import 'package:dio/dio.dart';

class ApiService {
  final Dio _dio;
  final baseUrl = 'https://www.googleapis.com/books/v1/';

  ApiService(this._dio);

  Future<Map<String, dynamic>> get({required String endpoints}) async {
    var response = await _dio.get('$baseUrl$endpoints');
    return response.data;
  }
}
