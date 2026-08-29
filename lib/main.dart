// Karim Toson || kareemtoson1@gmail.com || Fri Aug 28 2026 22:36:59

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mtec/features/todo/cubit/logic.dart';
import 'package:mtec/features/todo/todo_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider(create: (context) => TodoCubit(), child: TodoScreen()),
    );
  }
}
