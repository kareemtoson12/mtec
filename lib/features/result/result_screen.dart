// Karim Toson || kareemtoson1@gmail.com || Sat Aug 15 2026 20:07:02

import 'package:flutter/material.dart';
import 'package:mtec/features/result/result_model.dart';

class ResultScreen extends StatelessWidget {
  final BmiResult result;

  const ResultScreen({super.key, required this.result});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: .center,
        children: [
          Center(child: Text('Result Screen')),

          Text(result.result),
          Text(result.value.toString()),
          Text(result.description),
        ],
      ),
    );
  }
}
