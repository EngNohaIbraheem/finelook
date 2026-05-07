import 'package:flutter/material.dart';
import 'package:newfashionstore/features/auth/forget_password/presentation/widgets/Forget_password_Button.dart';
import 'package:newfashionstore/features/auth/forget_password/presentation/widgets/forget_password_header.dart';
import 'package:newfashionstore/features/auth/verification_code/presentation/screens/verificaton_code.dart';
import 'widgets/email_input_field.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});
  static const String routeName = "ForgotPasswordScreen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 30),
              const ForgotPasswordHeader(),
              const SizedBox(height: 100),
              const EmailInputField(),
              const SizedBox(height: 40),
              ForgetPasswordButton(
                onPressed: () {
                  Navigator.pushNamed(
                      context, VerificationCodeScreen.routeName);

                  // Navigate to Home
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
