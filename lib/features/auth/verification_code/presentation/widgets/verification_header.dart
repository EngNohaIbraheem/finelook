import 'package:flutter/material.dart';

class VerificationHeader extends StatelessWidget {
  const VerificationHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () => Navigator.pop(context),
        ),
        const SizedBox(height: 40),
        const Text(
          'Verification code',
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 18),
        const Text(
          'Please enter the verification code we sent to your email address',
          style: TextStyle(
            fontSize: 16,
            color: Colors.black,
            height: 1.5,
          ),
        ),
      ],
    );
  }
}
