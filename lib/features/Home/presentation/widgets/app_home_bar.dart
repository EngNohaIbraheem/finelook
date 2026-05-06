import 'package:flutter/material.dart';

import '../screens/notification_screen.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.white,
      centerTitle: true,
      title: const Text(
        'Fluxstore',
        style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
      ),
      leading: Builder(
        builder: (context) => IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {
            Scaffold.of(context).openDrawer();
          },
        ),
      ),
      ///knlknlm;//////


      // leading: Builder(
      //   builder: (context) => IconButton(
      //     icon: const Icon(Icons.menu, color: Colors.black),
      //     onPressed: () => Scaffold.of(context).openDrawer(),
      //   ),
      // ),
      actions: [
        IconButton(
          icon: const Icon(Icons.notifications_none, color: Colors.black),
          onPressed: () {
            Navigator.pushNamed(context, NotificationScreen.routeName);

          },
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(56);
}
