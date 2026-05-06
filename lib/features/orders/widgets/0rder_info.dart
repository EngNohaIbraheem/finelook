import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OrderInfo extends StatelessWidget {
  const OrderInfo();

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Delivered on 15.05.21',
          style: TextStyle(color: Colors.grey),
        ),
        SizedBox(height: 8),
        Text(
          'Tracking Number : IK287368838',
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
      ],
    );
  }
}
