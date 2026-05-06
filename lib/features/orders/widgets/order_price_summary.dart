import 'package:flutter/material.dart';

class OrderPriceSummary extends StatelessWidget {
  const OrderPriceSummary({super.key});

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
          _Row('Maxi Dress x1', '\$68.00'),
          _Row('Linen Dress x1', '\$52.00'),
          Divider(height: 24),
          _Row('Sub Total', '\$120.00'),
          _Row('Shipping', '\$0.00'),
          Divider(height: 24),
          _Row('Total', '\$120.00', bold: true),
        ],
      ),
    );
  }
}

class _Row extends StatelessWidget {
  final String title;
  final String value;
  final bool bold;

  const _Row(this.title, this.value, {this.bold = false});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title),
          Text(value,
              style:
              TextStyle(fontWeight: bold ? FontWeight.bold : FontWeight.normal)),
        ],
      ),
    );
  }
}
