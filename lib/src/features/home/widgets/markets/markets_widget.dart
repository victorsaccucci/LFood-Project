import 'package:flutter/material.dart';

class MarketsWidget extends StatefulWidget {
  const MarketsWidget({super.key});

  @override
  State<MarketsWidget> createState() => _MarketsWidget();
}

class _MarketsWidget extends State<MarketsWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: Center(
        child: Text('MArkets stores'),
      ),
    );
  }
}