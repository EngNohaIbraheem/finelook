import 'package:flutter/material.dart';
import '../models/order_model.dart';

class OrderStatusTabs extends StatelessWidget {
  final OrderStatus selected;
  final ValueChanged<OrderStatus> onChanged;

  const OrderStatusTabs({
    super.key,
    required this.selected,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: OrderStatus.values.map((status) {
        final isSelected = selected == status;

        return GestureDetector(
          onTap: () => onChanged(status),
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 8),
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            decoration: BoxDecoration(
              color: isSelected ? Colors.black : Colors.transparent,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Text(
              status.name.capitalize(),
              style: TextStyle(
                color: isSelected ? Colors.white : Colors.black,
              ),
            ),
          ),
        );
      }).toList(),
    );
  }
}

extension on String {
  String capitalize() => this[0].toUpperCase() + substring(1);
}
