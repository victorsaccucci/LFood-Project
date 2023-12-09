import 'package:flutter/material.dart';

class DrinksStoreWidget extends StatefulWidget {
  const DrinksStoreWidget({super.key});

  @override
  State<DrinksStoreWidget> createState() => _DrinksStoreWidget();
}

class _DrinksStoreWidget extends State<DrinksStoreWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: Center(
        child: Text('Drinks stores'),
      ),
    );
  }
}