// Karim Toson || kareemtoson1@gmail.com || Sat Aug 01 2026 18:41:13

import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Information userInfo =
        ModalRoute.of(context)!.settings.arguments as Information;

    return Scaffold(
      appBar: AppBar(title: Text('')),
      body: Center(
        child: TextButton(
          onPressed: () {
            Navigator.pushNamedAndRemoveUntil(
              context,
              'DashboardScreen',
              (route) => false,
            );
          },
          child: Text(''),
        ),
      ),
    );
  }
}

class Information {
  final String name;
  final int age;
  final String address;

  Information({required this.name, required this.age, required this.address});
}
