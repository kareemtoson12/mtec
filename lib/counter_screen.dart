// Karim Toson || kareemtoson1@gmail.com || Sat Aug 08 2026 17:23:11

import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: .center,

        children: [
          Center(
            child: Text('Counter is $counter ', style: TextStyle(fontSize: 30)),
          ),

          SizedBox(height: 20),
          Row(
            mainAxisAlignment: .spaceAround,
            children: [
              IconButton(
                icon: Icons.add,
                onPressedd: () {
                  setState(() {
                    counter++;
                  });
                },
              ),
              IconButton(
                icon: Icons.remove,
                onPressedd: () {
                  setState(() {
                    counter--;
                  });
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class IconButton extends StatelessWidget {
  final Function() onPressedd;
  final IconData icon;
  const IconButton({super.key, required this.onPressedd, required this.icon});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: onPressedd, child: Icon(icon));
  }
}
