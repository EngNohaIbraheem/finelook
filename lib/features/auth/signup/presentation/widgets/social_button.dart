import 'package:flutter/material.dart';
import 'package:newfashionstore/features/auth/signup/presentation/widgets/social_icon.dart';

class SocialButtons extends StatelessWidget {
  const SocialButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SocialIcon(

          image: 'assets/images/google.png',
          onTap: () {
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(
            //     builder: (_) => const AppleLoginScreen(),
            //   ),
            // );
          },
        ),


        const SizedBox(width: 16),
        SocialIcon(
                 image: 'assets/images/apple.png',

          onTap: () {
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(
            //     builder: (_) => const AppleLoginScreen(),
            //   ),
            // );
          },
        ),
        const SizedBox(width: 16),
        SocialIcon(
          image: 'assets/images/facebook.png',
          onTap: () {
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(
            //     builder: (_) => const AppleLoginScreen(),
            //   ),
            // );
          },
        ),
      ],
    );
  }
}
