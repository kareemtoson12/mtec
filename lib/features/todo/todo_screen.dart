import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mtec/features/todo/cubit/logic.dart';
import 'package:mtec/features/todo/cubit/states.dart';
import 'package:mtec/features/todo/widgts/todo_widget.dart';

class TodoScreen extends StatefulWidget {
  const TodoScreen({super.key});

  @override
  State<TodoScreen> createState() => _TodoScreenState();
}

class _TodoScreenState extends State<TodoScreen> {
  late TextEditingController todoController;
  @override
  void initState() {
    super.initState();
    todoController = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    todoController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: BlocListener<TodoCubit, TodoStates>(
            listener: (context, state) {
              if (state is AddTodoStates) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(' todo added sucssfuly'),
                    backgroundColor: Colors.green,
                  ),
                );
              }
            },
            child: Column(
              children: [
                BlocBuilder<TodoCubit, TodoStates>(
                  builder: (context, state) {
                    return Expanded(
                      child: ListView.builder(
                        itemCount: state.todos.length,
                        itemBuilder: (context, index) {
                          return TodoWidget(
                            text: state.todos[index],
                            deleteTask: () {
                              context.read<TodoCubit>().delete(index);
                            },
                          );
                        },
                      ),
                    );
                  },
                ),

                Spacer(),

                Row(
                  children: [
                    Expanded(
                      child: TextField(
                        controller: todoController,
                        decoration: InputDecoration(
                          labelText: 'Write a task...',
                          fillColor: Colors.grey.withValues(alpha: 0.5),
                          filled: true,
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    SizedBox(
                      height: 55,
                      child: ElevatedButton(
                        onPressed: () {
                          context.read<TodoCubit>().addFunction(
                            todoController.text,
                          );
                          todoController.clear();
                        },
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadiusGeometry.circular(10),
                          ),
                          backgroundColor: Colors.black,
                          foregroundColor: Colors.white,
                        ),
                        child: Text('Add'),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
