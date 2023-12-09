import 'package:flutter/material.dart';

class DrugsStoreWidget extends StatefulWidget {
  const DrugsStoreWidget({super.key});

  @override
  State<DrugsStoreWidget> createState() => _DrugsStoreWidget();
}

class _DrugsStoreWidget extends State<DrugsStoreWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: Center(
        child: Text('Drugs stores'),
      ),
    );
  }
}