import 'package:flutter/material.dart';

class OnboardingIndicator extends StatelessWidget {
  final int currentPage;
  final int itemCount;

  const OnboardingIndicator({
    super.key,
    required this.currentPage,
    required this.itemCount,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        itemCount,
            (index) => AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          margin: const EdgeInsets.symmetric(horizontal: 4),
          height: 8,
          width: currentPage == index ? 12 : 8,
          decoration: BoxDecoration(
            color: currentPage == index ? Colors.white : Colors.grey,
            shape: BoxShape.circle,
          ),
        ),
      ),
    );
  }
}
