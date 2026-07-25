// Karim Toson || kareemtoson1@gmail.com || Sat Jul 25 2026 20:00:02

import 'package:flutter/material.dart';

class ViewBillScreen extends StatelessWidget {
  const ViewBillScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: .center,
              children: [
                Text('View Bill', style: TextStyle(fontSize: 30)),

                CustomBill(
                  color: Colors.green,
                  imagePath: 'assets/electricty.png',
                  price: '18',
                  text: 'Electricty',
                ),
                CustomBill(
                  color: Colors.yellow,
                  imagePath: 'assets/electricty.png',
                  price: '20',
                  text: 'a',
                ),
                CustomBill(
                  color: Colors.green,
                  imagePath: 'assets/electricty.png',
                  price: '18',
                  text: 'Electricty',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CustomBill extends StatelessWidget {
  final String imagePath;
  final String text;
  final String price;
  final Color color;

  const CustomBill({
    super.key,
    required this.imagePath,
    required this.text,
    required this.price,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Image.asset(imagePath),
          SizedBox(width: 10),

          Text(text, style: TextStyle(fontSize: 30)),
          Spacer(),
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Color(0xffA0AEC0), width: 2.5),
            ),
            child: Row(
              children: [
                Text(
                  '\$ $price',
                  style: TextStyle(fontSize: 30, color: Colors.red),
                ),
                Text(
                  '/month',
                  style: TextStyle(fontSize: 30, color: Colors.red),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
