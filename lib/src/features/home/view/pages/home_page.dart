import 'package:flutter/material.dart';
import 'package:pepperoni/pepperoni.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home page'),
      ),
      bottomNavigationBar: PepperoniBottomBar
      (
        onIndexSelected: (index) => print(index),
        
        items: [
        PepperoniBottomBarItem(icon: Icons.home, label: 'Inicio'),
        PepperoniBottomBarItem(icon: Icons.search, label: 'Busca'),
        PepperoniBottomBarItem(icon: Icons.file_copy_rounded, label: 'Pedidos'),
        PepperoniBottomBarItem(icon: Icons.person, label: 'Perfil'),
      ]),
    );
  }
}
