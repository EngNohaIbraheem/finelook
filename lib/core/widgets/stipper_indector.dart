import 'package:flutter/material.dart';
import '../config/theme/app_color.dart';

class StepperIndicator extends StatelessWidget {
  final int currentStep;

  const StepperIndicator({super.key, required this.currentStep});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(3, (index) {
        return Container(
          margin: const EdgeInsets.symmetric(horizontal: 6),
          width: 10,
          height: 10,
          decoration: BoxDecoration(
            color: index <= currentStep
                ? AppColors.primary
                : AppColors.grey.withOpacity(0.3),
            shape: BoxShape.circle,
          ),
        );
      }),
    );
  }
}
