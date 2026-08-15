// Karim Toson || kareemtoson1@gmail.com || Sat Aug 15 2026 18:00:08

import 'package:flutter/material.dart';
import 'package:mtec/core/colors_manger.dart';
import 'package:mtec/core/style_manger.dart';

class GenderSelection extends StatelessWidget {
  final String genderName;
  final IconData icon;
  final Function() onTap;
  final bool isSelected;

  const GenderSelection({
    super.key,
    required this.genderName,
    required this.icon,
    required this.onTap,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          margin: EdgeInsets.all(5),
          decoration: BoxDecoration(
            color: isSelected
                ? ColorsManager.secondary
                : ColorsManager.primrayWithOpacity,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            children: [
              Icon(icon, size: 150, color: Colors.white),
              Text(genderName, style: StyleManager.grey30w400),
            ],
          ),
        ),
      ),
    );
  }
}
