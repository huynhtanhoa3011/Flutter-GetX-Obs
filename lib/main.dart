import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lession14_getx_obx_app/pages/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Hello Flutter",
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
