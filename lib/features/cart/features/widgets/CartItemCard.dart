import 'package:flutter/material.dart';
import 'package:newfashionstore/features/cart/features/widgets/quality_selector.dart';
import '../../models/cart_item_model.dart';

class CartItemCard extends StatelessWidget {
  final CartItemModel item;
  final VoidCallback onAdd;
  final VoidCallback onRemove;
  final ValueChanged<bool?> onSelect;

  const CartItemCard({
    super.key,
    required this.item,
    required this.onAdd,
    required this.onRemove,
    required this.onSelect,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Image.asset(
              item.image,
              width: 90,
              height: 90,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item.title,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 6),
                Text('\$ ${item.price.toStringAsFixed(2)}'),
                const SizedBox(height: 6),
                Text(
                  'Size: ${item.size} | Color: ${item.color}',
                  style: const TextStyle(color: Colors.grey),
                ),
                const SizedBox(height: 8),
                QuantitySelector(
                  quantity: item.quantity,
                  onAdd: onAdd,
                  onRemove: onRemove,
                ),
              ],
            ),
          ),
          Checkbox(
            value: item.isSelected,
            onChanged: onSelect,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(6),
            ),
          ),
        ],
      ),
    );
  }
}
