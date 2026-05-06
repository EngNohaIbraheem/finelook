import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class WishlistTabs extends StatefulWidget {
  const WishlistTabs({super.key});

  @override
  State<WishlistTabs> createState() => _WishlistTabsState();
}

class _WishlistTabsState extends State<WishlistTabs> {
  int selectedIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
      ),
      child: Row(
        children: [
          _tabItem("All items", 0),
          _tabItem("Boards", 1),
        ],
      ),
    );
  }

  Widget _tabItem(String title, int index) {
    final bool isSelected = selectedIndex == index;

    return Expanded(
      child: GestureDetector(
        onTap: () => setState(() => selectedIndex = index),
        child: Container(
          color: isSelected ? Colors.black : Colors.transparent,
          padding: const EdgeInsets.symmetric(vertical: 12),
          child: Center(
            child: Text(
              title,
              style: TextStyle(
                color: isSelected ? Colors.white : Colors.black,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
