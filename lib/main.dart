import 'package:flutter/material.dart';
import 'package:food_delivery/pages/food.dart/popular_food.dart';
import 'package:food_delivery/pages/recommended_food_detail.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:flutter/services.dart';
import 'pages/main_food_page/main_food_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'recommended',
      routes: {
        'foodpage': (context) => mianfoodpage(),
        'popular': (context) => popularfooddetail(),
        'recommended':(context) => recommendedfooddetail(), 
      },
    );
  }
}
