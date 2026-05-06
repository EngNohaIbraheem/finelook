import 'package:flutter/material.dart';

class HomeDrawer extends StatelessWidget {
  const HomeDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: const [
              ListTile(title: Text('Homepage')),
              ListTile(title: Text('Discover')),
              ListTile(title: Text('My Order')),
              ListTile(title: Text('Profile')),
            ],
          ),
        ),
      ),
    );
  }
}
