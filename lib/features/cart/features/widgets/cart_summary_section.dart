import 'package:flutter/material.dart';

import '../../../checkk_out_ttttt/screens/shipping_screen.dart';
import '../../../payment/screens/payment_screen.dart';

class CartSummarySection extends StatelessWidget {
  final double subtotal;

  const CartSummarySection({super.key, required this.subtotal});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _row('Product price', '\$${subtotal.toStringAsFixed(0)}'),
        const Divider(),
        _row('Shipping', 'Freeship'),
        const Divider(),
        _row(
          'Subtotal',
          '\$${subtotal.toStringAsFixed(0)}',
          isBold: true,
        ),
        const SizedBox(height: 20),
        SizedBox(
          width: double.infinity,
          height: 56,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.black,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(28),
              ),
            ),
            onPressed: () {

              Navigator.pushNamed(context, ShippingScreen.routeName);

            },
            child: const Text(
              'Proceed to checkout',
              style: TextStyle(fontSize: 18),
            ),
          ),
        ),
      ],
    );
  }

  Widget _row(String left, String right, {bool isBold = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(left, style: TextStyle(color: Colors.grey.shade600)),
          Text(
            right,
            style: TextStyle(
              fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
              fontSize: isBold ? 18 : 16,
            ),
          ),
        ],
      ),
    );
  }
}
