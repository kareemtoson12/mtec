import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mtec/features/todo/cubit/states.dart';

class TodoCubit extends Cubit<TodoStates> {
  TodoCubit() : super(IntialStates(todos: ['saher', 'todo 2', 'todo 3']));

  //add f

  void addFunction(String todoName) {
    List<String> updatedList = state.todos;
    updatedList.add(todoName);
    emit(AddTodoStates(todos: updatedList));
  }

  void delete(int index) {
    List<String> updatedList = state.todos;

    updatedList.removeAt(index);
    emit(RemoveTodoStates(todos: updatedList));
  }
}
