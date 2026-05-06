import 'package:flutter/material.dart';

class PaymentMethodItem extends StatelessWidget {
  final String image;

  const PaymentMethodItem({super.key,
    required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Image.asset(image, height: 24),
    );
  }
}
