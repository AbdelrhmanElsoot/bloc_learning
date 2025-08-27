import 'dart:developer';

import 'package:call_api_with_cubit/core/constants/api_constats.dart';
import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class DioHelper {
  static Dio? dio;
  static initDio() {
    dio ??= Dio(BaseOptions(baseUrl: ApiConstats.apiBaseUrl));
    // dio!.interceptors.add(PrettyDioLogger());
  }

  static getResponse({required String endPoint}) async {
    try {
      final response = await dio!.get(endPoint);
      return response;
    } catch (error) {
      log("the erro id here  ${error.toString()}");
      return error.toString();
    }
  }
}
