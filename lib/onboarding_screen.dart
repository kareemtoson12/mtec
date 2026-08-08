// Karim Toson || kareemtoson1@gmail.com || Sat Aug 08 2026 19:29:16

import 'package:flutter/material.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsetsGeometry.all(10),
          child: Column(
            children: [
              Align(
                alignment: Alignment.topRight,
                child: Text(
                  'Skip ',
                  style: TextStyle(
                    color: Color(0xff8D8D8D),
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
              ),

              Expanded(
                child: PageView.builder(
                  itemCount: listofData.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Image.asset(listofData[index].image),
                        SizedBox(height: 30),
                        Text(
                          listofData[index].title,
                          style: TextStyle(
                            color: Colors.black,
          
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          listofData[index].descraption,
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.normal,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),

              SizedBox(height: 30),
              GestureDetector(
                onTap: () {},
                child: Container(
                  width: 150,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Color(0xff3E0555),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text(
                      'Next',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.normal,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class OnboardingUiModel {
  final String image;
  final String title;
  final String descraption;

  OnboardingUiModel({
    required this.image,
    required this.title,
    required this.descraption,
  });
}

List<OnboardingUiModel> listofData = [
  OnboardingUiModel(
    descraption:
        'Take control of your finances effortlessly track, save, and grow with ease',
    title: 'Welcome to Finyx!',
    image: 'assets/financial1.png',
  ),
  OnboardingUiModel(
    descraption:
        'TPlan wisely, manage efficiently, and achieve your financial goals with ease.',
    title: 'Take control of your finances!',
    image: 'assets/financial2.png',
  ),
  OnboardingUiModel(
    descraption:
        'track your progress, and achieve your financial goals with confidence',
    title: 'Plan your finances',
    image: 'assets/financial3.png',
  ),
];

clipper