import 'package:flutter/material.dart';

class PriceRow extends StatelessWidget {
  final String title;
  final String? quantity;
  final String price;
  final bool isBold;

  const PriceRow({
    super.key,
    required this.title,
    required this.price,
    this.quantity,
    this.isBold = false,
  });

  @override
  Widget build(BuildContext context) {
    final style = TextStyle(
      fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
    );

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Row(
        children: [
          Expanded(child: Text(title, style: style)),
          if (quantity != null)
            Padding(
              padding: const EdgeInsets.only(right: 8),
              child: Text(quantity!, style: style),
            ),
          Text(price, style: style),
        ],
      ),
    );
  }
}
