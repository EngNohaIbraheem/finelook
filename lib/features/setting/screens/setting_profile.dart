import 'package:flutter/material.dart';

import '../widgets/profile_avater.dart';
import '../widgets/profile_textfield.dart';
import '../widgets/save_button.dart';


class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});
  static const  String routeName ="SettingScreen" ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: const BackButton(color: Colors.black),
        centerTitle: true,
        title: const Text(
          'Profile Setting',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            ProfileAvatar(),
            SizedBox(height: 30),

            Row(
              children: [
                Expanded(
                  child: ProfileTextField(
                    label: 'First Name',
                    initialValue: 'Sunie',
                  ),
                ),
                SizedBox(width: 16),
                Expanded(
                  child: ProfileTextField(
                    label: 'Last Name',
                    initialValue: 'Pham',
                  ),
                ),
              ],
            ),

            SizedBox(height: 20),

            ProfileTextField(
              label: 'Email',
              initialValue: 'sunieux@gmail.com',
            ),

            SizedBox(height: 20),

            Row(
              children: [
                Expanded(
                  child: ProfileTextField(
                    label: 'Gender',
                    initialValue: 'Female',
                  ),
                ),
                SizedBox(width: 16),
                Expanded(
                  child: ProfileTextField(
                    label: 'Phone',
                    initialValue: '(+1) 23456789',
                  ),
                ),
              ],
            ),

            Spacer(),
            SaveButton(),
          ],
        ),
      ),
    );
  }
}
