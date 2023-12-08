import 'package:flutter/material.dart';
import 'package:lfood/src/features/home/view/pages/home_page.dart';
import 'package:lfood/src/features/order/view/pages/order_page.dart';
import 'package:lfood/src/features/profile/view/pages/profile_page.dart';
import 'package:lfood/src/features/search/views/pages/search_page.dart';
import 'package:pepperoni/pepperoni.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPage();
}

class _DashboardPage extends State<DashboardPage> {

  final pageController = PageController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: pageController,
        children: const [
          HomePage(),
          SearchPage(),
          OrderPage(),
          ProfilePage()
        ],
      ),
      bottomNavigationBar: PepperoniBottomBar
      (
        onIndexSelected: (index) => pageController.jumpToPage(index),
        items: [
        PepperoniBottomBarItem(
          icon: Icons.home,
          activeicon: Icons.home_filled,
          label: 'Inicio'),

        PepperoniBottomBarItem(
          icon: Icons.search,
          activeicon: Icons.search_off_sharp,
          label: 'Busca'),

        PepperoniBottomBarItem(
          icon: Icons.file_copy_outlined,
          activeicon: Icons.file_copy_rounded,
          label: 'Pedidos'),

        PepperoniBottomBarItem(
          icon: Icons.person_outlined,
          activeicon: Icons.person,
          label: 'Perfil'),
      ]),
    );
  }
}
