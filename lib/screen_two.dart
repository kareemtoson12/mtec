// Karim Toson || kareemtoson1@gmail.com || Sat Jul 25 2026 18:59:06

import 'package:flutter/material.dart';

class ScreenTwo extends StatelessWidget {
  const ScreenTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.lightGreen,
      appBar: AppBar(
        actions: [
          Icon(Icons.search, color: Colors.white),
          SizedBox(width: 10),
        ],
        leading: Icon(Icons.menu, color: Colors.white),
        backgroundColor: Colors.green,
        centerTitle: true,
        title: Text('sports', style: TextStyle(color: Colors.white)),
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 30),
        child: SizedBox(
          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: .center,
              children: [
                CustomPost(
                  postText:
                      'Why are footballs biggest clubs starting a new tournament?',
                ),
                CustomPost(
                  postText:
                      'Why are footballs biggest clubs starting a new tournament?',
                ),
                CustomPost(
                  postText:
                      'Why are footballs biggest clubs starting a new tournament?',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CustomPost extends StatelessWidget {
  final String postText;
  const CustomPost({super.key, required this.postText});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        crossAxisAlignment: .start,
        children: [
          Image.asset('assets/football.png'),
          Text('BBC NEWS'),
          Text(postText),
        ],
      ),
    );
  }
}
