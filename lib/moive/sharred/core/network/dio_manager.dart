import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_application_1/moive/sharred/constants/app_values.dart';
import 'package:flutter_application_1/moive/sharred/utls/utils.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class DioManager {
  Dio? _dioInstance;

  Dio? get dio {
    // if _dioInstance in null go to this function initDio
    _dioInstance ??= initDio();
    return _dioInstance;
  }

  Dio initDio() {
    final Dio dio = Dio(BaseOptions(
      baseUrl: AppValues.baseUrl,
      headers: <String, dynamic>{},
      connectTimeout: Duration(seconds: 3),
      sendTimeout: Duration(seconds: 3),
      receiveTimeout: Duration(seconds: 3),
    ));

    if (!kReleaseMode) {
      dio.interceptors.add(PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        responseBody: true,
        responseHeader: true,
        error: true,
        compact: true,
        maxWidth: 120,
      ));
    }
    return dio;
  }

  void updateDio() => _dioInstance = initDio();

  //4 main funciton to deal with api requsts
  // get -//
  Future<Response> get(String url,
      {Map<String, dynamic>? headers, Map<String, dynamic>? json}) async {
    return await dio!
        .get(url, queryParameters: json, options: Options(headers: headers))
        .then((response) {
      return response;
    }).catchError((error) {
      errorToast(
          code: error?.response?.statuscode.toString() ?? 'error',
          msg: error?.response?.data.toString() ?? 'error');
    });
  }

  // post /-
  Future<Response> post(String url,
      {Map<String, dynamic>? headers, Map<String, dynamic>? json}) async {
    return await dio!
        .post(url, data: json, options: Options(headers: headers))
        .then((response) {
      return response;
    }).catchError((error) {
      errorToast(
          code: error?.response?.statuscode.toString() ?? 'error',
          msg: error?.response?.data.toString() ?? 'error');
    });
  }

  // put -/
  Future<Response> put(String url,
      {Map<String, dynamic>? headers, Map<String, dynamic>? json}) async {
    return await dio!
        .put(url, data: json, options: Options(headers: headers))
        .then((response) {
      return response;
    }).catchError((error) {
      errorToast(
          code: error?.response?.statuscode.toString() ?? 'error',
          msg: error?.response?.data.toString() ?? 'error');
    });
  }

  // put -/
  Future<Response>? delete(String url,
      {Map<String, dynamic>? headers, Map<String, dynamic>? json}) async {
    return await dio!
        .delete(url, data: json, options: Options(headers: headers))
        .then((response) {
      return response;
    }).catchError((error) {
      errorToast(
          code: error?.response?.statuscode.toString() ?? 'error',
          msg: error?.response?.data.toString() ?? 'error');
    });
  }
}
