import 'package:flutter/material.dart';

class OrderInfoCard extends StatelessWidget {
  const OrderInfoCard({super.key});

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
          _Row(title: 'Order number', value: '#1514'),
          _Row(title: 'Tracking Number', value: 'IK987362341'),
          _Row(title: 'Delivery address', value: 'SBI Building, Software Park'),
        ],
      ),
    );
  }
}

class _Row extends StatelessWidget {
  final String title;
  final String value;

  const _Row({required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title, style: const TextStyle(color: Colors.grey)),
          Flexible(child: Text(value, textAlign: TextAlign.end)),
        ],
      ),
    );
  }
}
