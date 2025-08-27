import 'dart:developer';

import 'package:call_api_with_cubit/core/networking/dio_helper.dart';
import 'package:call_api_with_cubit/core/networking/end_points.dart';
import 'package:call_api_with_cubit/features/home_screen/models/product_model.dart';
import 'package:dio/dio.dart';

class HomeScreenServices {
  getProducts() async {
    try {
      Response response = await DioHelper.getResponse(
        endPoint: EndPoints.productsEndPoint,
      );
      if (response.statusCode == 200) {
        ProductsModel productsModel = ProductsModel.fromJson(response.data);
        return productsModel;
      } else {
        throw Exception("The Api has Error ");
      }
    } catch (e) {}
  }
}
