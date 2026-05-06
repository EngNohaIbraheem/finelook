import 'package:flutter/material.dart';

class PaymentMethodCard extends StatelessWidget {
  final String title;
  final IconData icon;
  final bool selected;

  const PaymentMethodCard({
    super.key,
    required this.title,
    required this.icon,
    required this.selected, required bool isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 80,
        decoration: BoxDecoration(
          color: selected ? Colors.black : Colors.grey.shade200,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, color: selected ? Colors.white : Colors.grey),
            if (title.isNotEmpty) ...[
              const SizedBox(height: 6),
              Text(
                title,
                style: TextStyle(
                  color: selected ? Colors.white : Colors.grey,
                ),
              ),
            ]
          ],
        ),
      ),
    );
  }
}
