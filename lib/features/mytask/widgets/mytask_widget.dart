import 'package:flutter/material.dart';
import 'package:mtec/core/colors_manager.dart';
import 'package:mtec/core/styels_manager.dart';

class MyTaskWidget extends StatelessWidget {
  final String taskTitle;
  final bool isSelected;
  const MyTaskWidget({
    super.key,
    required this.taskTitle,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 4),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      decoration: BoxDecoration(
        color: isSelected
            ? ColorsManager.krishna
            : ColorsManager.krishna.withValues(alpha: 0.3),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Text(
        taskTitle,
        style: isSelected
            ? StyelsManager.bold16white
            : StyelsManager.bold16white.copyWith(color: Colors.grey),
      ),
    );
  }
}
