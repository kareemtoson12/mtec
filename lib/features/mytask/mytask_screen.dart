import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mtec/core/colors_manager.dart';
import 'package:mtec/core/styels_manager.dart';
import 'package:mtec/features/mytask/widgets/mytask_widget.dart';

class MyTaskScreen extends StatelessWidget {
  const MyTaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: .start,
            children: [
              Text('My Tasks', style: StyelsManager.bold25heatherblack),
              SizedBox(height: 10.h),
              SizedBox(
                height: 25.h,
                child: ListView(
                  scrollDirection: .horizontal,
                  children: [
                    MyTaskWidget(taskTitle: 'All', isSelected: true),
                    MyTaskWidget(taskTitle: 'Inpogress', isSelected: false),
                    MyTaskWidget(taskTitle: 'Waiting', isSelected: false),
                    MyTaskWidget(taskTitle: 'Finished', isSelected: false),
                  ],
                ),
              ),
              SizedBox(height: 10.h),
              Row(
                children: [
                  Image.asset('assets/icon.png'),
                  Expanded(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                              'Grocery Shopping App',
                              style: StyelsManager.boldBlack16,
                            ),
                            SizedBox(width: 3.w),
                            Container(
                              decoration: BoxDecoration(
                                color: ColorsManager.lightPaleRose,

                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Text(
                                'Waiting',
                                style: StyelsManager.bold16white.copyWith(
                                  color: ColorsManager.coral,
                                  fontSize: 13.sp,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Text(
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          'This application is designed for super shops. By using this application they can enlist all their products in one place and can deliver. Customers will get a one-stop solution for their daily shopping.',
                        ),

                        Row(
                          children: [
                            Icon(Icons.flag),
                            Text('medium'),
                            Spacer(),
                            Text('14/17/2002'),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Icon(Icons.settings),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
