import 'package:flutter/material.dart';
import '../../../forget_password/presentation/widgets/under_line_eleveted_button.dart';
import '../../../signup/presentation/signup_screen.dart';

class SignUpTextButton extends StatelessWidget {
  const SignUpTextButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "Don’t have an account? ",
          style: TextStyle(color: Colors.black),
        ),
        UnderlineElevatedButton(
          text: 'Sign Up',
          onPressed: () {
            Navigator.pushNamed(context, SignUpScreen.routeName);
          },
        ),
      ],
    );
  }
}
