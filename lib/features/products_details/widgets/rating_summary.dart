import 'package:flutter/material.dart';
import 'package:newfashionstore/features/products_details/widgets/rating_bar_row.dart';

class RatingSummary extends StatelessWidget {
  const RatingSummary({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        // color: Colors.black,
        borderRadius: BorderRadius.circular(16),
      ),
      child: const Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// Left Section (Rating Number)
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '4.9',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              Text(
                'OUT OF 5',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.black,
                ),
              ),
            ],
          ),

          SizedBox(width: 24),

          /// Right Section (Stars + Progress Bars)
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /// Stars + Total Ratings
                Row(
                  children: [
                    Icon(Icons.star, color: Colors.teal, size: 18),
                    Icon(Icons.star, color: Colors.teal, size: 18),
                    Icon(Icons.star, color: Colors.teal, size: 18),
                    Icon(Icons.star, color: Colors.teal, size: 18),
                    Icon(Icons.star, color: Colors.teal, size: 18),
                    SizedBox(width: 8),
                    Text(
                      '83 Ratings',
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 16),

                /// Rating Bars
                RatingBarRow(star: 5, value: 0.85),
                RatingBarRow(star: 4, value: 0.25),
                RatingBarRow(star: 3, value: 0.15),
                RatingBarRow(star: 2, value: 0.10),
                RatingBarRow(star: 1, value: 0.05),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
