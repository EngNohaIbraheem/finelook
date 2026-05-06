import 'package:flutter/material.dart';

// import '../../../features/home/presentation/screens/notification_screen.dart';


class WishlistAppBar extends StatelessWidget implements PreferredSizeWidget {
  const WishlistAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      centerTitle: true,
      leading: IconButton(
        icon: const Icon(Icons.menu, color: Colors.black),
        onPressed: () {
          () => Scaffold.of(context).openDrawer();

        },
      ),

      title: const Text(
        'My Wishlist',
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w600,
        ),
      ),
      actions: [
        IconButton(
          icon: const Icon(Icons.notifications_none, color: Colors.black),
          onPressed: () {
            // Navigator.pushNamed(context, NotificationScreen.routeName);
          },
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
