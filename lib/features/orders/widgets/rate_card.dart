import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RateCard extends StatelessWidget {
  const RateCard();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: Row(
        children: [
          const Icon(Icons.touch_app, color: Colors.amber, size: 32),
          const SizedBox(width: 16),
          const Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Don’t forget to rate",
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
                SizedBox(height: 4),
                Text(
                  "Rate product to get 5 points for collect.",
                  style: TextStyle(color: Colors.grey, fontSize: 12),
                ),
              ],
            ),
          ),
          Row(
            children: List.generate(
              5,
                  (index) => const Icon(
                Icons.star_border,
                color: Colors.grey,
              ),
            ),
          )
        ],
      ),
    );
  }
}
