// Karim Toson || kareemtoson1@gmail.com || Sat Jul 25 2026 17:40:09

import 'package:flutter/material.dart';

class ScreenOne extends StatelessWidget {
  const ScreenOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        centerTitle: true,
        title: Text('News', style: TextStyle(color: Colors.white)),
      ),

      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: .start,

          children: [
            Text(
              'Pick your category\nof interest',
              style: TextStyle(color: Color(0xff4F5A69), fontSize: 25),
            ),

            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                children: [
                  CustomCategory(
                    color: Colors.green,
                    image: 'assets/splash.png',
                    text: 'Politics',
                  ),
                  CustomCategory(
                    color: Colors.red,
                    image: 'assets/splash.png',
                    text: 'Politics',
                  ),

                  CustomCategory(
                    color: Colors.pink,
                    image: 'assets/splash.png',
                    text: 'Health',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomCategory extends StatelessWidget {
  final Color color;
  final String text;
  final String image;

  const CustomCategory({
    super.key,
    required this.color,
    required this.text,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Image.asset(image, height: 110),
          Text(text, style: TextStyle(fontSize: 20)),
        ],
      ),
    );
  }
}
