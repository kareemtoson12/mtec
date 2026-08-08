// Karim Toson || kareemtoson1@gmail.com || Sat Aug 08 2026 18:12:43

import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {


 late TextEditingController emailController;
 late TextEditingController passwordController;

  @override
  void initState() {
    super.initState();
    emailController=TextEditingController();
    passwordController=TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: .center,
            children: [
              TextField(
                controller: emailController,
                decoration: InputDecoration(border: OutlineInputBorder()),
              ),
              SizedBox(height: 20),
              TextField(
                controller: passwordController,
                decoration: InputDecoration(border: OutlineInputBorder()),
              ),

              ElevatedButton(
                onPressed: () {
                  print(emailController.text);
                  print(passwordController.text);
                },
                child: Text('print data'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
