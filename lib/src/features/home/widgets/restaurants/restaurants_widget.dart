import 'package:flutter/material.dart';

class RestaurantsWidgets extends StatefulWidget {
  const RestaurantsWidgets({super.key});

  @override
  State<RestaurantsWidgets> createState() => _RestaurantsWidgets();
}

class _RestaurantsWidgets extends State<RestaurantsWidgets> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: Center(
        child: Text('Restaurantes stores'),
      ),
    );
  }
}