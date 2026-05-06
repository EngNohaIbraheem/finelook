import 'package:flutter/material.dart';
import '../widgets/Bottom_Nav_BAR.DART.dart';
import '../widgets/profile_header.dart';
import '../widgets/settingCard.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});
  static const String routeName = "ProfileScreen";

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xffF5F5F5),
      // bottomNavigationBar: BottomNavBar(),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              SizedBox(height: 20),
              ProfileHeader(),
              SizedBox(height: 80),
              SettingsCard(),
            ],
          ),
        ),
      ),
    );
  }
}
