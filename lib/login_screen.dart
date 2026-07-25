// Karim Toson || kareemtoson1@gmail.com || Sat Jul 25 2026 20:17:12

import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Stack(
                children: [
                  Image.asset('assets/splash.png'),

                  Icon(Icons.import_contacts),
                ],
              ),
              Center(child: Image.asset('assets/nawel.png')),
              SizedBox(height: 20),
              CustomTextField(icon: Icons.email, text: 'email'),
              SizedBox(height: 20),
              CustomTextField(icon: Icons.lock, text: 'password'),
              Spacer(),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xff8900FE),
                    foregroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusGeometry.circular(10),
                    ),
                  ),
                  onPressed: () {
                    print('login');
                  },
                  child: Text('Login'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomTextField extends StatelessWidget {
  final String text;
  final IconData icon;

  const CustomTextField({super.key, required this.text, required this.icon});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        label: Text(text),
        fillColor: Colors.grey.withValues(alpha: 0.5),
        filled: true,
        prefixIcon: Icon(icon, color: Colors.grey),
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}


/* Stack
listview */