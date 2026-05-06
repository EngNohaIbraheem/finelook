import 'package:flutter/material.dart';
import '../models/order_model.dart';

class OrderStatusLabel extends StatelessWidget {
  final OrderStatus status;

  const OrderStatusLabel({super.key, required this.status});

  @override
  Widget build(BuildContext context) {
    final color = switch (status) {
      OrderStatus.pending => Colors.orange,
      OrderStatus.delivered => Colors.green,
      OrderStatus.cancelled => Colors.red,
    };

    final text = status.name.toUpperCase();

    return Text(
      text,
      style: TextStyle(
        color: color,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}
