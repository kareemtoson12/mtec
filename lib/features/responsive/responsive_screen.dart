import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ResponsiveScreen extends StatelessWidget {
  const ResponsiveScreen({super.key});

  @override
  Widget build(BuildContext context) {
    /*  final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width; */

    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Container(
              color: Colors.black12,
              height: 400.h,
              width: 200.w,
              child: Text('', style: TextStyle(fontSize: 15.sp)),
            ),
          ],
        ),
      ),
    );
  }
}
