// import 'package:flutter/material.dart';
// import 'package:newfashionstore/features/cart/features/widgets/quality_selector.dart';
// import 'package:newfashionstore/features/cart/models/cart_item_model.dart';
//
// class CartItemCard extends StatelessWidget {
//   final String image;
//   final String title;
//   final double price;
//   final String size;
//   final String color;
//
//   const CartItemCard({
//     super.key,
//     required this.image,
//     required this.title,
//     required this.price,
//     required this.size,
//     required this.color, required CartItemModel item, required Null Function() onRemove, required Null Function() onAdd,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: const EdgeInsets.all(12),
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(20),
//         boxShadow: [
//           BoxShadow(
//             blurRadius: 20,
//             color: Colors.black.withOpacity(0.05),
//           ),
//         ],
//       ),
//       child: Row(
//         children: [
//           ClipRRect(
//             borderRadius: BorderRadius.circular(16),
//             child: Image.asset(
//               image,
//               width: 90,
//               height: 90,
//               fit: BoxFit.cover,
//             ),
//           ),
//           const SizedBox(width: 12),
//           Expanded(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   title,
//                   style: const TextStyle(
//                     fontSize: 16,
//                     fontWeight: FontWeight.w600,
//                   ),
//                 ),
//                 const SizedBox(height: 4),
//                 Text(
//                   '\$${price.toStringAsFixed(2)}',
//                   style: const TextStyle(
//                     fontSize: 16,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//                 const SizedBox(height: 4),
//                 Text(
//                   'Size: $size  |  Color: $color',
//                   style: TextStyle(
//                     color: Colors.grey.shade600,
//                     fontSize: 12,
//                   ),
//                 ),
//                 const SizedBox(height: 8),
//                 const QuantitySelector(),
//               ],
//             ),
//           ),
//           const Icon(
//             Icons.check_circle,
//             color: Color(0xff4F8F7B),
//           ),
//         ],
//       ),
//     );
//   }
// }
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
