import 'package:bmi_calculator/pages/bmi_page.dart';
import 'package:bmi_calculator/pages/result_page.dart';
import 'package:bmi_calculator/utils/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const BmiApp());
}

class BmiApp extends StatelessWidget {
  const BmiApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BMI Calculator',
      theme: AppTheme.darkTheme(),
      home: BmiPage(),
    );
  }
}
