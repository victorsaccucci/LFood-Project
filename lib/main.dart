import 'package:flutter/material.dart';
import 'package:lfood/src/features/home/view/pages/home_page.dart';

void main() {
  runApp(const LFoodApp());
}

class LFoodApp extends StatelessWidget {
  const LFoodApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LFood',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}



