// Karim Toson || kareemtoson1@gmail.com || Sat Aug 22 2026 17:56:46

sealed class CounterStates {
  final int counter;

  CounterStates({required this.counter});
}

class IntialState extends CounterStates {
  IntialState({required super.counter});
}

class IncrementState extends CounterStates {
  IncrementState({required super.counter});
}

class DecrementState extends CounterStates {
  DecrementState({required super.counter});
}
