import 'package:flutter/material.dart';
import '../../../orders/screens/my_orders_screen.dart';
import '../../../profile/screens/profile_screen.dart';
import '../../../setting/screens/setting_profile.dart';
import '../widgets/side_bar_menu_item.dart';
import '../widgets/theme_switcher.dart';
import 'Main_layout.dart';

class SidebarDrawer extends StatelessWidget {
  const SidebarDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(30),
          bottomRight: Radius.circular(30),
        ),
      ),
      child: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20), // ✅ Screen padding
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 24),
                Row(
                  children: [
                    const CircleAvatar(
                      radius: 35,
                      backgroundImage:
                      AssetImage('assets/images/avatar.png'),
                    ),
                    const SizedBox(width: 12),
                    const Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Sunie Pham',
                              style: TextStyle(fontWeight: FontWeight.w600)),
                          Text('sunieux@gmail.com',
                              style: TextStyle(color: Colors.grey)),
                        ],
                      ),
                    ),
                    IconButton(
                      icon: const Icon(Icons.settings),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => const SettingScreen(),
                          ),
                        );
                      },
                    ),
                  ],
                ),
                const SizedBox(height: 24),

                SlidebarMenuItem(
                  icon: Icons.home,
                  title: 'Homepage',
                  isSelected: true,
                  onTap: () {
                    Navigator.pushNamed(context, MainLayout.routeName);

                  },
                ),
                SlidebarMenuItem(
                  icon: Icons.search,
                  title: 'Discover',
                  onTap: () {
                    // Navigator.pushNamed(context, DiscoverScreen.routeName);

                  },
                ),
                SlidebarMenuItem(
                  icon: Icons.shopping_bag,
                  title: 'My Order',
                  onTap: () {
                    Navigator.pushNamed(context, MyOrdersScreen.routeName);

                  },
                ),
                SlidebarMenuItem(
                  icon: Icons.person,
                  title: 'My profile',
                  onTap: () {
                    Navigator.pushNamed(context, ProfileScreen.routeName);

                  },
                ),

                const SizedBox(height: 24),
                const Text(
                  'OTHER',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 16),

                SlidebarMenuItem(
                  icon: Icons.settings,
                  title: 'Setting',
                  onTap: () {
                    Navigator.pushNamed(context, SettingScreen.routeName);

                  },
                ),
                SlidebarMenuItem(
                  icon: Icons.support_agent,
                  title: 'Support',
                  onTap: () {
                    Navigator.pushNamed(context, MainLayout.routeName);

                  },
                ),
                SlidebarMenuItem(
                  icon: Icons.info_outline,
                  title: 'About us',
                  onTap: () {},
                ),

                const Spacer(),
                const ThemeSwitcher(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
