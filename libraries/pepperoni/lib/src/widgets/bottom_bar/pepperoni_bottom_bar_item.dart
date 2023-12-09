import 'package:flutter/material.dart';

class PepperoniBottomBarItem{
  final String label;
  final IconData icon;
  final IconData activeicon;
  final int countBadge;

  PepperoniBottomBarItem( {
      required this.label,
      required this.icon,
      required this.activeicon,
      this.countBadge = 0,
  } );
}