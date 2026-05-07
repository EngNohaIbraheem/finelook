import 'package:flutter/material.dart';
import '../../../../onboarding/presentation/widgets/onboarding_button.dart';
import '../../../create _newpassword/screens/create_new_password.dart';
import '../../../login/presentation/widgets/signup_text.dart';
import '../widgets/onboarding_button.dart';
import '../widgets/otp_input.dart';
import '../widgets/resend_timer.daer.dart';
import '../widgets/verification_header.dart';

class VerificationCodeScreen extends StatefulWidget {
  const VerificationCodeScreen({super.key});
  static const  String routeName ="VerificationCodeScreen" ;

  @override
  State<VerificationCodeScreen> createState() => _VerificationCodeScreenState();
}

class _VerificationCodeScreenState extends State<VerificationCodeScreen> {
  final TextEditingController otpController = TextEditingController();
  int secondsRemaining = 10;

  void startTimer() {
    setState(() {
      secondsRemaining = 10;
    });
  }

  @override
  void dispose() {
    otpController.dispose();
    super.dispose();
  }

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
               const VerificationHeader(),
               const SizedBox(height: 40),
              OtpInput(controller: otpController),
              const SizedBox(height: 32),
              ResendTimer(
                seconds: secondsRemaining,
                onResend: startTimer,
                onTick: (value) {
                  setState(() => secondsRemaining = value);
                },
              ),
              const SizedBox(height: 40),
              VerificationButton(
                onPressed: () {
                  Navigator.pushNamed(context, CreateNewPasswordScreen.routeName);

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
