import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../home/presentation/screens/Main_layout.dart';
import '../../../../home/presentation/screens/home_screen.dart';
import '../../../../welcome/screens/welcome_screen.dart';

class SignUpButton extends StatelessWidget {
  const SignUpButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 200,
        height: 50,
        child: ElevatedButton(
          onPressed: () {

            Navigator.pushNamed(context, MainLayout.routeName);
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFF2B1B17),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
          ),
          child: const Text(
            'SIGN UP',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
