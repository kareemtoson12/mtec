// Karim Toson || kareemtoson1@gmail.com || Sat Aug 01 2026 17:33:16

import 'package:flutter/material.dart';

class ScreenTwo extends StatelessWidget {
  const ScreenTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('second Screen')),
      backgroundColor: Colors.amber,
      body: Center(
        child: TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('back to first  Screen', style: TextStyle(fontSize: 30)),
        ),
      ),
    );
  }
}
