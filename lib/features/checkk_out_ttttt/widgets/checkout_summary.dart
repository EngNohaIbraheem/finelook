import 'package:flutter/material.dart';

class CheckoutSummary extends StatelessWidget {
  const CheckoutSummary({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: const [
          _RowItem(title: 'Product price', value: '\$110'),
          SizedBox(height: 8),
          _RowItem(title: 'Shipping', value: 'Freeship'),
          Divider(height: 24),
          _RowItem(
            title: 'Subtotal',
            value: '\$110',
            isBold: true,
          ),
        ],
      ),
    );
  }
}

class _RowItem extends StatelessWidget {
  final String title;
  final String value;
  final bool isBold;

  const _RowItem({
    required this.title,
    required this.value,
    this.isBold = false,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title),
        Text(
          value,
          style: TextStyle(
            fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
          ),
        ),
      ],
    );
  }
}
