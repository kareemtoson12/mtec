// Karim Toson || kareemtoson1@gmail.com || Sat Aug 22 2026 19:50:32

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mtec/features/login/cubit/logic.dart';
import 'package:mtec/features/login/cubit/states.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late TextEditingController _emailController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _emailController = TextEditingController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _emailController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _emailController,
              decoration: InputDecoration(border: OutlineInputBorder()),
            ),

            ElevatedButton(
              onPressed: () {
                context.read<LoginCubit>().displayName(_emailController.text);
              },
              child: Text('Save'),
            ),

            BlocBuilder<LoginCubit, LoginStates>(
              builder: (context, state) {
                if (state is DisplayNameState) {
                  return Text('Name: ${state.name}');
                } else {
                  return SizedBox();
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
