import 'package:flutter/cupertino.dart';

class SignUpTitle extends StatelessWidget {
  const SignUpTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Create\nyour account',
      style: TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.bold,
        height: 1.2,
      ),
    );
  }
}
