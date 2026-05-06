import 'package:flutter/material.dart';

class PaymentMethodSelector extends StatelessWidget {
  const PaymentMethodSelector({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        _Item(icon: Icons.attach_money, label: 'Cash'),
        SizedBox(width: 12),
        _Item(icon: Icons.credit_card, label: 'Credit Card', selected: true),
        SizedBox(width: 12),
        _Item(icon: Icons.more_horiz),
      ],
    );
  }
}

class _Item extends StatelessWidget {
  final IconData icon;
  final String? label;
  final bool selected;

  const _Item({
    required this.icon,
    this.label,
    this.selected = false,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 60,
        decoration: BoxDecoration(
          color: selected ? Colors.black : Colors.white,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Colors.grey.shade300),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, color: selected ? Colors.white : Colors.grey),
            if (label != null)
              Text(
                label!,
                style: TextStyle(
                  color: selected ? Colors.white : Colors.grey,
                ),
              ),
          ],
        ),
      ),
    );
  }
}

