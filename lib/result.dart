import 'dart:io';

import 'package:bmi_app/home.dart';
import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  const Result({
    super.key,
    required this.result,
    required this.isMale,
    required this.age,
  });

  final double result;
  final bool isMale;
  final int age;

  String get resultPhrase {
    String resultTesxt = '';

    if (result >= 30) {
      resultTesxt = "Obese";
    } else if (result >= 25.0 && result <= 29.9) {
      resultTesxt = "OverWight";
    } else if (result > 18.5 && result <= 24.9) {
      resultTesxt = "Normal";
    } else if (result <= 18.5) {
      resultTesxt = "UnderWeight";
    }

    return resultTesxt;
  }

  String get resultGender {
    String gender = '';

    isMale ? gender = 'Male' : gender = 'Female';

    return gender;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: TextButton(
          onPressed: () => Navigator.of(context).push(
            MaterialPageRoute(
              builder: ((_) => const MyHomePage()),
            ),
          ),
          child: const Icon(
            Icons.home,
            color: Colors.white,
          ),
        ),
        title: const Text('Result'),
        centerTitle: true,
        actions: [
          TextButton(
              onPressed: () => exit(0),
              child: const Icon(
                Icons.exit_to_app,
                color: Colors.red,
              ))
        ],
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              resultFun(context, 'Gender:', resultGender, Icons.person),
              const SizedBox(height: 10),
              resultFun(
                  context, 'BMI:', result.toStringAsFixed(1), Icons.balance),
              const SizedBox(height: 10),
              resultFun(context, 'Healthiness:', resultPhrase, null),
              const SizedBox(height: 10),
              resultFun(context, 'Age:', age, Icons.calendar_month),
            ],
          ),
        ),
      ),
    );
  }

  Container resultFun(
      BuildContext context, String text, Object obj, IconData? ico) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.deepPurpleAccent,
      ),
      width: 400,
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            ico,
            color: Colors.cyan,
          ),
          Text(
            '$text $obj',
            style: Theme.of(context).textTheme.displayLarge,
          ),
        ],
      ),
    );
  }
}
