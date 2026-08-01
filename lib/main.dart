import 'package:flutter/material.dart';
import 'package:mtec/sign_up.dart';

void main() {
  runApp(NavigationApp());
}

class NavigationApp extends StatelessWidget {
  const NavigationApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: SignUp());
  }
}
