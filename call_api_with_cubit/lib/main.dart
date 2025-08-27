import 'package:call_api_with_cubit/core/networking/dio_helper.dart';
import 'package:call_api_with_cubit/features/home_screen/home_screen.dart';
import 'package:call_api_with_cubit/features/home_screen/services/home_screen_services.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
  DioHelper.initDio();
  HomeScreenServices().getProducts();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: Colors.white),
      home: HomeScreen(),
    );
  }
}
