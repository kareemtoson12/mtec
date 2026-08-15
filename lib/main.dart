// Karim Toson || kareemtoson1@gmail.com || Fri Aug 14 2026 14:19:25

import 'package:flutter/material.dart';
import 'package:mtec/features/home/home_screen.dart';

void main() {
  runApp(BMI());
}

class BMI extends StatelessWidget {
  const BMI({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomeScreen());
  }
}
