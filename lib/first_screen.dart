// Karim Toson || kareemtoson1@gmail.com || Sat Aug 01 2026 17:28:55

import 'package:flutter/material.dart';
import 'package:mtec/screen_two.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('First Screen')),
      body: Center(
        child: TextButton(
          onPressed: () {
            Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(builder: (context) => ScreenTwo()),
              (route) => false,
            );
          },
          child: Text(' go to secnod Screen', style: TextStyle(fontSize: 30)),
        ),
      ),
    );
  }
}
