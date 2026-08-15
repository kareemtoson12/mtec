// Karim Toson || kareemtoson1@gmail.com || Sat Aug 15 2026 19:59:41

import 'package:flutter/material.dart';
import 'package:mtec/core/colors_manger.dart';
import 'package:mtec/core/style_manger.dart';

class CustomButton extends StatelessWidget {
  final Function() onTap;
  final String text;

  const CustomButton({super.key, required this.onTap, required this.text});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: ColorsManager.secondary,
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(10),
            bottomLeft: Radius.circular(10),
          ),
        ),
        child: Center(child: Text(text, style: StyleManager.white30Bold)),
      ),
    );
  }
}
