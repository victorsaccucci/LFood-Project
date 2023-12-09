import 'package:flutter/material.dart';

class AllStoresWidget extends StatefulWidget {
  const AllStoresWidget({super.key});

  @override
  State<AllStoresWidget> createState() => _AllStoresWidget();
}

class _AllStoresWidget extends State<AllStoresWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: Center(
        child: Text('All stores'),
      ),
    );
  }
}