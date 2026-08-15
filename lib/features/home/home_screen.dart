// Karim Toson || kareemtoson1@gmail.com || Sat Aug 15 2026 17:30:34

import 'package:flutter/material.dart';
import 'package:mtec/core/colors_manger.dart';
import 'package:mtec/core/style_manger.dart';
import 'package:mtec/core/widgets/cutsom_button.dart';
import 'package:mtec/features/home/widgets/gender_selection.dart';
import 'package:mtec/features/home/widgets/weight_and_age.dart';
import 'package:mtec/features/result/result_model.dart';
import 'package:mtec/features/result/result_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String genderNameSelected = '';
  double heightValue = 150;
  int weightValue = 60;
  int ageValue = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManager.primray,

      appBar: AppBar(
        backgroundColor: ColorsManager.primray,
        centerTitle: true,
        title: Text('BMI Calculator', style: StyleManager.white30Bold),
        elevation: 6,
        shadowColor: Colors.black,
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsetsGeometry.all(10),
          child: Column(
            children: [
              Row(
                children: [
                  GenderSelection(
                    genderName: 'Male',
                    icon: Icons.male,
                    onTap: () {
                      setState(() {
                        genderNameSelected = 'Male';
                      });
                    },
                    isSelected: genderNameSelected == 'Male',
                  ),

                  GenderSelection(
                    genderName: 'Female',
                    icon: Icons.female,
                    onTap: () {
                      setState(() {
                        genderNameSelected = 'Female';
                      });
                    },
                    isSelected: genderNameSelected == 'Female',
                  ),
                ],
              ),
              SizedBox(height: 40),
              Container(
                margin: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: ColorsManager.primrayWithOpacity,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    Text(' Height', style: StyleManager.grey30w400),

                    Text(
                      '${heightValue.toInt()} cm',
                      style: StyleManager.white30Bold,
                    ),
                    Slider(
                      activeColor: ColorsManager.secondary,
                      min: 0,
                      max: 200,
                      value: heightValue,
                      onChanged: (value) {
                        setState(() {
                          heightValue = value;
                        });
                      },
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  WeightAndAge(
                    weightValue: weightValue,
                    ageValue: ageValue,
                    isAge: false,
                  ),
                  WeightAndAge(
                    weightValue: weightValue,
                    ageValue: ageValue,
                    isAge: true,
                  ),
                ],
              ),
              Spacer(),
              CustomButton(
                onTap: () {
                  final result = calculateBmi(
                    ageValue: ageValue,
                    genderNameSelected: genderNameSelected,
                    heightValue: heightValue,
                    weightValue: weightValue,
                  );
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ResultScreen(result: result),
                    ),
                  );
                },
                text: 'Calculate',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
