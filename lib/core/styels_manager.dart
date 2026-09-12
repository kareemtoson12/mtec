import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mtec/core/colors_manager.dart';

class StyelsManager {
  static TextStyle bold25heatherblack = TextStyle(
    color: ColorsManager.heatherblack.withValues(alpha: 0.8),
    fontSize: 25.sp,
    fontWeight: FontWeight.bold,
  );
  static TextStyle bold16white = TextStyle(
    fontWeight: FontWeight.bold,
    color: Colors.white,
    fontSize: 16.sp,
  );

  static TextStyle boldBlack16 = TextStyle(
    color: Colors.black,
    fontSize: 16.sp,
    fontWeight: FontWeight.bold,
  );
}
