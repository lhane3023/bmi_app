import 'package:bmi_app/home.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BMI APP',
      theme: ThemeData(
        primarySwatch: Colors.teal,
        canvasColor: Colors.black,
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
        textTheme: const TextTheme(
          displayLarge: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 35,
            fontFamily: 'OpenSans',
            color: Colors.white,
          ),
          displayMedium:  TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 30,
          fontFamily: 'OpenSans',
          color: Colors.black,
        )
        ),
      ),
      home: const MyHomePage(),
    );
  }
}
