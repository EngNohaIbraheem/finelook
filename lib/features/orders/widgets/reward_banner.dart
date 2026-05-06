import 'package:flutter/material.dart';
class RewardBanner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      decoration: BoxDecoration(
        color: Colors.grey.shade800,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: const [
          Icon(Icons.card_giftcard, color: Colors.white),
          SizedBox(width: 12),
          Expanded(
            child: Text(
              'Submit your review to get 5 points',
              style: TextStyle(color: Colors.white),
            ),
          ),
          Icon(Icons.arrow_forward_ios, color: Colors.white, size: 16),
        ],
      ),
    );
  }
}

