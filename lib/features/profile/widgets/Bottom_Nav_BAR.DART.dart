import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar();

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: 3,
      type: BottomNavigationBarType.fixed,
      items: const [
        BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined), label: ""),
        BottomNavigationBarItem(
            icon: Icon(Icons.search_outlined), label: ""),
        BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag_outlined), label: ""),
        BottomNavigationBarItem(
            icon: Icon(Icons.person_outline), label: ""),
      ],
    );
  }
}
