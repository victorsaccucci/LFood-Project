import 'package:flutter/material.dart';
import 'package:pepperoni/src/widgets/bottom_bar/pepperoni_bottom_bar_item.dart';

class PepperoniBottomBar extends StatefulWidget {

  final List<PepperoniBottomBarItem> items;

  const PepperoniBottomBar({super.key, required this.items});

  @override
  State<PepperoniBottomBar> createState() => _PepperoniBottomBarState();
}

class _PepperoniBottomBarState extends State<PepperoniBottomBar> {

  int selected = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items:List.from(
        widget.items.map(
          (item) => BottomNavigationBarItem(
            icon: Icon(item.icon),
             label: item.label
            ),
          ), 
        ),
      selectedItemColor: Colors.black87,
      unselectedItemColor: Colors.black54,
      showUnselectedLabels: true,
      currentIndex: selected,
      onTap: (index){
        setState(() {
          selected = index;
        });
      },
    );
  }
}