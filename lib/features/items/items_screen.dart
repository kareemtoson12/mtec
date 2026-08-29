import 'package:flutter/material.dart';
import 'package:mtec/features/items/widgets/item_widget.dart';

class ItemsScreen extends StatelessWidget {
  const ItemsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(children: [ItemWidget()]),
        ),
      ),
    );
  }
}
