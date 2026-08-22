// Karim Toson || kareemtoson1@gmail.com || Sat Aug 22 2026 17:13:10

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mtec/features/counter/cubit/logic.dart';
import 'package:mtec/features/counter/cubit/states.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    print('build all screen');
    return Scaffold(
      body: Column(
        mainAxisAlignment: .center,
        children: [
          Center(
            child: BlocBuilder<CounterCubit, CounterStates>(
              builder: (context, state) {
                return Text(
                  'counter is ${state.counter}',
                  style: TextStyle(fontSize: 30),
                );
              },
            ),
          ),
          ElevatedButton(
            onPressed: () {
              context.read<CounterCubit>().counterIncrement();
              print('build this widget only ');
            },
            child: Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
