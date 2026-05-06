import 'package:flutter/material.dart';

class RatingValue extends StatelessWidget {
  final double rating;
  final int totalRatings;

  const RatingValue({
    super.key,
    required this.rating,
    required this.totalRatings,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              rating.toStringAsFixed(1),
              style: const TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(width: 6),
            const Padding(
              padding: EdgeInsets.only(bottom: 6),
              child: Text(
                'OUT OF 5',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 8),
        Row(
          children: List.generate(
            5,
                (index) => Icon(
              index < rating.round()
                  ? Icons.star
                  : Icons.star_border,
              size: 18,
              color: Colors.teal,
            ),
          ),
        ),
        const SizedBox(height: 6),
        Text(
          '$totalRatings Ratings',
          style: const TextStyle(
            fontSize: 12,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}
