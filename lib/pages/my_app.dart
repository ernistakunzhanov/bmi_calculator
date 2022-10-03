import 'package:bmi_calculator/pages/bmi_page.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BMI Calculator',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color(0xff0b0e21),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xff0b0e21),
        ),
      ),
      home: const BmiPage(),
    );
  }
}
