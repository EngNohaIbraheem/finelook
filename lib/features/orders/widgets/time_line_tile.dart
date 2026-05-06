import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newfashionstore/features/orders/widgets/traking_time.dart';

class TimelineTile extends StatelessWidget {
  final TrackingItem item;
  final bool isLast;

  const TimelineTile({super.key,
    required this.item,
    required this.isLast,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          children: [
            Container(
              width: 20,
              height: 20,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: item.isActive ? Colors.black : Colors.white,
                border: Border.all(color: Colors.black),
              ),
              child: item.isActive
                  ? const Icon(Icons.check, size: 12, color: Colors.white)
                  : null,
            ),
            if (!isLast)
              Container(
                width: 2,
                height: 40,
                color: Colors.grey.shade400,
              ),
          ],
        ),
        const SizedBox(width: 16),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    item.title,
                    style: const TextStyle(fontSize: 14),
                  ),
                ),
                Text(
                  item.time,
                  style: const TextStyle(color: Colors.grey, fontSize: 12),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
