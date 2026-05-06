import 'package:flutter/material.dart';

import '../../../notification/screens/notification_screen.dart';

class DiscoverAppBar extends StatelessWidget {
  const DiscoverAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
         Builder(
          builder: (context) => IconButton(
            icon: const Icon(Icons.menu, color: Colors.black),
            onPressed: () => Scaffold.of(context).openDrawer(),

          ),
        ),
        const Spacer(),
        const Text(
          'Discover',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w600,
          ),
        ),
        const Spacer(),
        Stack(
          children: [
            IconButton(
              icon: const Icon(Icons.notifications_none, color: Colors.black),
              onPressed: () {
                Navigator.pushNamed(context, NotificationScreen.routeName);

              },
            ),
            const Positioned(
              right: 0,
              top: 2,
              child: CircleAvatar(
                radius: 4,
                backgroundColor: Colors.red,
              ),
            )
          ],
        )
      ],
    );
  }
}
