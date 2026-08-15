// Karim Toson || kareemtoson1@gmail.com || Sat Aug 15 2026 19:33:05

import 'package:flutter/material.dart';
import 'package:mtec/core/colors_manger.dart';
import 'package:mtec/core/style_manger.dart';

// ignore: must_be_immutable
class WeightAndAge extends StatefulWidget {
  WeightAndAge({
    super.key,
    required this.weightValue,
    required this.ageValue,
    required this.isAge,
  });

  int weightValue;
  int ageValue;
  final bool isAge;

  @override
  State<WeightAndAge> createState() => _WeightAndAgeState();
}

class _WeightAndAgeState extends State<WeightAndAge> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: ColorsManager.primrayWithOpacity,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            Text(
              widget.isAge ? ' Age' : ' Weight',
              style: StyleManager.grey30w400,
            ),
            Text(
              '${widget.isAge ? widget.ageValue : widget.weightValue}',
              style: StyleManager.white30Bold,
            ),
            Row(
              mainAxisAlignment: .spaceEvenly,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: CircleBorder(),
                    backgroundColor: Colors.grey,
                  ),
                  onPressed: () {
                    setState(() {
                      widget.isAge ? widget.ageValue++ : widget.weightValue++;
                    });
                  },
                  child: Icon(Icons.add, color: Colors.white),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: CircleBorder(),
                    backgroundColor: Colors.grey,
                  ),
                  onPressed: () {
                    setState(() {
                      widget.isAge ? widget.ageValue-- : widget.weightValue--;
                    });
                  },
                  child: Icon(Icons.remove, color: Colors.white),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
