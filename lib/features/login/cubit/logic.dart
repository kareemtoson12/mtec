// Karim Toson || kareemtoson1@gmail.com || Sat Aug 22 2026 19:54:50

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mtec/features/login/cubit/states.dart';

class LoginCubit extends Cubit<LoginStates> {
  LoginCubit() : super(IntialState(name: ''));

  void displayName(String newName) {
    emit(DisplayNameState(name: newName));
  }
}
