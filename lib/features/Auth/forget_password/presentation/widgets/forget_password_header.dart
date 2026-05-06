import 'package:flutter/material.dart';

class ForgotPasswordHeader extends StatelessWidget {
  const ForgotPasswordHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: Colors.grey.shade300, // لون الدائرة
              width: 1,
            ),
          ),
          child: IconButton(
            icon: const Icon(
              Icons.arrow_back_ios,
              size: 20,
            ),
            onPressed: () => Navigator.pop(context),
          ),
        ),

        const SizedBox(height: 40),
        const Text(
          'Forgot password?',
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 16),
        const Text(
          'Enter email associated with your account and we’ll send an email with instructions to reset your password',
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
