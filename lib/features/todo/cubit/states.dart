sealed class TodoStates {
  final List<String> todos;

  TodoStates({required this.todos});
}

class IntialStates extends TodoStates {
  IntialStates({required super.todos});
}

class AddTodoStates extends TodoStates {
  AddTodoStates({required super.todos});
}

class RemoveTodoStates extends TodoStates {
  RemoveTodoStates({required super.todos});
}
