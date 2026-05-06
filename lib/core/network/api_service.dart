import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:newfashionstore/core/network/cache/cache_helper.dart';
import 'package:newfashionstore/core/network/failures.dart';

class ApiService {
  final Dio _authDio;

  ApiService(this._authDio) {

    _initializeInterceptors();
  }

  void _setDioOptions() {
    _authDio.options
      ..baseUrl = "https://ecomercenode-production.up.railway.app/"
      ..receiveDataWhenStatusError = true
      ..headers = {
        'Accept': 'application/json',
        'Authorization': 'Bearer ${CacheHelper.cachedToken}',
      };
  }

  void _initializeInterceptors() {
    _authDio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) {
          log('➡️ REQUEST [${options.method}] => PATH: ${options.path}');
          log('Headers: ${options.headers}');
          log('Data: ${options.data}');
          log('Query: ${options.queryParameters}');
          return handler.next(options);
        },
        onResponse: (response, handler) {
          log('✅ RESPONSE [${response.statusCode}] => PATH: ${response.requestOptions.path}');
          log('Response Data: ${response.data}');
          return handler.next(response);
        },
        onError: (error, handler) {
          log('❌ ERROR [${error.response?.statusCode}] => PATH: ${error.requestOptions.path}');
          log('Error Message: ${error.message}');
          log('Error Data: ${error.response?.data}');
          handler.reject(error);
        },
      ),
    );
  }

  Future<Response> postData({
    required String url,
    Map<String, dynamic>? query,
    required Object data,
  }) async {
    _setDioOptions();
    return await _authDio.post(url, queryParameters: query, data: data);
  }

  Future<Response> getData({
    required String url,
    Map<String, dynamic>? query,
  }) async {
    _setDioOptions();
    return await _authDio.get(url, queryParameters: query);
  }

  Future<Response> putData({
    required String url,
    Map<String, dynamic>? query,
    required Map<String, dynamic> data,
  }) async {
    _setDioOptions();
    return await _authDio.put(url, queryParameters: query, data: data);
  }

  Future<Response> deleteData({
    required String url,
    Map<String, dynamic>? query,
    required Map<String, dynamic> data,
  }) async {
    _setDioOptions();
    return await _authDio.delete(url, queryParameters: query, data: data);
  }
}
