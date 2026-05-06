import 'package:flutter/material.dart';

class OnboardingBackground extends StatelessWidget {
  const OnboardingBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        /// Bottom dark background
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Container(
            height: MediaQuery.of(context).size.height * 0.35,
            color: const Color(0xFF4A4A4A),
          ),
        ),

        /// Left white curved shape
        Positioned(
          left: -40,
          bottom: MediaQuery.of(context).size.height * 0.25,
          child: Container(
            width: 80,
            height: 160,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(40),
            ),
          ),
        ),

        /// Right white curved shape
        Positioned(
          right: -40,
          bottom: MediaQuery.of(context).size.height * 0.25,
          child: Container(
            width: 80,
            height: 160,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(40),
            ),
          ),
        ),
      ],
    );
  }
}
