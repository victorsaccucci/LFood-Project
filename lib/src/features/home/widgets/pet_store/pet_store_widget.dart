import 'package:flutter/material.dart';

class PetStoreWidgets extends StatefulWidget {
  const PetStoreWidgets({super.key});

  @override
  State<PetStoreWidgets> createState() => _PetStoreWidgets();
}

class _PetStoreWidgets extends State<PetStoreWidgets> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: Center(
        child: Text('Restaurants store'),
      ),
    );
  }
}