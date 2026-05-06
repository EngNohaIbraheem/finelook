import 'package:flutter/material.dart';

class OrderStatusBanner extends StatelessWidget {
  const OrderStatusBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.grey.shade700,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: const [
          Expanded(
            child: Text(
              'Your order is delivered\nRate product to get 5 points for collect.',
              style: TextStyle(color: Colors.white),
            ),
          ),
          Icon(Icons.inventory_2_outlined, color: Colors.white),
        ],
      ),
    );
  }
}
