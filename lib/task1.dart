// Karim Toson || kareemtoson1@gmail.com || Sat Jul 18 2026 18:35:58

import 'package:flutter/material.dart';

class Task1 extends StatelessWidget {
  const Task1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amberAccent,
      body: SizedBox(
        //  color: Colors.red,
        width: double.infinity,
        child: Container(
          color: Colors.red,
          child: Column(
            mainAxisAlignment: .end,
            crossAxisAlignment: .end,
            children: [
              Text('My Name IS ', style: TextStyle(fontSize: 40)),
              Text('islam ', style: TextStyle(fontSize: 40)),
            ],
          ),
        ),
      ),
    );
  }
}
