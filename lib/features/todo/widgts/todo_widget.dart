import 'package:flutter/material.dart';

class TodoWidget extends StatelessWidget {
  final String text;
  final Function() deleteTask;
  const TodoWidget({super.key, required this.text, required this.deleteTask});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Colors.grey.withValues(alpha: 0.5),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(text, style: TextStyle(fontSize: 17, fontWeight: .bold)),

          IconButton(onPressed: deleteTask, icon: Icon(Icons.delete)),
        ],
      ),
    );
  }
}
