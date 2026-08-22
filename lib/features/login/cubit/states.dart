// Karim Toson || kareemtoson1@gmail.com || Sat Aug 22 2026 19:54:45

sealed class LoginStates {
  final String name;

  LoginStates({required this.name});
}

class IntialState extends LoginStates {
  IntialState({required super.name});
}

class DisplayNameState extends LoginStates {
  DisplayNameState({required super.name});
}
