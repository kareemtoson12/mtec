// Karim Toson || kareemtoson1@gmail.com || Sat Aug 01 2026 18:41:07

import 'package:flutter/material.dart';
import 'package:mtec/profile_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('HomeScreem')),
      body: Center(
        child: TextButton(
          onPressed: () {
            Navigator.pushNamed(
              context,
              'ProfileScreen',
              arguments: Information(name: 'saher', age: 22, address: 'cairo'),
            );
          },
          child: Text('Go to ProfileScreen'),
        ),
      ),
    );
  }
}
