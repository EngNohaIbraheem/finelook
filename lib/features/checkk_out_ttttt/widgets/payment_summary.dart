
import 'package:flutter/material.dart';

class PaymentSummary extends StatelessWidget {
  const PaymentSummary({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _row('Product price', '\$110'),
        const SizedBox(height: 8),
        _row('Shipping', 'Freeship'),
        const Divider(height: 24),
        _row('Subtotal', '\$110', bold: true),
        const SizedBox(height: 12),
        Row(
          children: const [
            Icon(Icons.check_box, color: Colors.green),
            SizedBox(width: 8),
            Text('I agree to '),
            Text(
              'Terms and conditions',
              style: TextStyle(decoration: TextDecoration.underline),
            ),
          ],
        ),
      ],
    );
  }

  Widget _row(String title, String value, {bool bold = false}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title),
        Text(
          value,
          style: TextStyle(fontWeight: bold ? FontWeight.bold : null),
        ),
      ],
    );
  }
}

