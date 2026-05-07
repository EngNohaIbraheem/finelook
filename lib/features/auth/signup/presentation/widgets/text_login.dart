import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginText extends StatelessWidget {
  const LoginText({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: RichText(
        text: TextSpan(
          style: TextStyle(color: Colors.black),
          children: const [
            TextSpan(text: 'Already have account? '),
            TextSpan(
              text: 'Sing up',
              style: TextStyle(
                decoration: TextDecoration.underline,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
