import 'package:flutter/material.dart';

class GemAppBar extends StatelessWidget implements PreferredSizeWidget {
  const GemAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.white,
      centerTitle: true,
      title: const Text(
        "GemStore",
        style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
      ),
      leading: const Icon(Icons.menu, color: Colors.black),
      actions: const [
        Padding(
          padding: EdgeInsets.only(right: 12),
          child: Icon(Icons.notifications_none, color: Colors.black),
        )
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
