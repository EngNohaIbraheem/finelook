import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

enum OrderStatus { delivered, cancelled, pending }

class OrderCard extends StatelessWidget {
  final String orderId;
  final String date;
  final String trackingNumber;
  final int quantity;
  final double subtotal;
  final OrderStatus status;
  final VoidCallback onDetailsTap;

  const OrderCard({
    super.key,
    required this.orderId,
    required this.date,
    required this.trackingNumber,
    required this.quantity,
    required this.subtotal,
    required this.status,
    required this.onDetailsTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white,
        boxShadow: [
          BoxShadow(color: Colors.grey.shade200, blurRadius: 10),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Order $orderId',
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(date, style: const TextStyle(color: Colors.grey)),
            ],
          ),
          const SizedBox(height: 8),
          Text('Tracking number: $trackingNumber'),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Quantity: $quantity'),
              Text(
                'Subtotal: \$$subtotal',
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
          const SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildStatus(),
              OutlinedButton(
                onPressed: onDetailsTap,
                child: const Text('Details'),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildStatus() {
    switch (status) {
      case OrderStatus.delivered:
        return const Text(
          'DELIVERED',
          style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold),
        );
      case OrderStatus.cancelled:
        return const Text(
          'CANCELLED',
          style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
        );
      default:
        return const Text(
          'PENDING',
          style: TextStyle(color: Colors.orange, fontWeight: FontWeight.bold),
        );
    }
  }
}






















//
// class OrderCard extends StatelessWidget {
//   final String orderId;
//   final String date;
//   final String trackingNumber;
//   final int quantity;
//   final double subtotal;
//   final String status;
//
//   const OrderCard({
//     super.key,
//     required this.orderId,
//     required this.date,
//     required this.trackingNumber,
//     required this.quantity,
//     required this.subtotal,
//     required this.status,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: const EdgeInsets.only(bottom: 16),
//       padding: const EdgeInsets.all(16),
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(16),
//         boxShadow: [
//           BoxShadow(
//             color: Colors.black.withOpacity(0.05),
//             blurRadius: 10,
//           ),
//         ],
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           /// HEADER
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Text(
//                 'Order $orderId',
//                 style: const TextStyle(
//                   fontSize: 16,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//               Text(
//                 date,
//                 style: const TextStyle(color: Colors.grey),
//               ),
//             ],
//           ),
//
//           const SizedBox(height: 10),
//
//           Text('Tracking number: $trackingNumber',
//               style: const TextStyle(color: Colors.grey)),
//
//           const SizedBox(height: 10),
//
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Text('Quantity: $quantity'),
//               Text(
//                 'Subtotal: \$${subtotal.toStringAsFixed(0)}',
//                 style: const TextStyle(fontWeight: FontWeight.w600),
//               ),
//             ],
//           ),
//
//           const SizedBox(height: 14),
//
//           /// FOOTER
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Text(
//                 status,
//                 style: const TextStyle(
//                   color: Colors.orange,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//               OutlinedButton(
//                 style: OutlinedButton.styleFrom(
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(20),
//                   ),
//                 ),
//                 onPressed: () {},
//                 child: const Text('Details'),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }
