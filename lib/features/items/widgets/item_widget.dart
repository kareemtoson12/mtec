import 'package:flutter/material.dart';

class ItemWidget extends StatelessWidget {
  const ItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('item one ', style: TextStyle(fontSize: 20)),
        Spacer(),
        IconButton(onPressed: () {}, icon: Icon(Icons.favorite)),
      ],
    );
  }
}
