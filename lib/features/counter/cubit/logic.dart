import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mtec/features/counter/cubit/states.dart';

class CounterCubit extends Cubit<CounterStates> {
  CounterCubit() : super(IntialState(counter: 0));

  void counterIncrement() {
    emit(IncrementState(counter: state.counter + 1));
  }

  void counterDecrement() {
    emit(DecrementState(counter: state.counter - 1));
  }
}
