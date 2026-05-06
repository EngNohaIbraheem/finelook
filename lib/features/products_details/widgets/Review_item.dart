import 'package:flutter/material.dart';

import '../models/review_model.dart';

class ReviewItem extends StatelessWidget {
  final ReviewModel review;

  const ReviewItem({
    super.key,
    required this.review, required title,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// Header Row
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// Avatar
              CircleAvatar(
                radius: 28,
                backgroundImage: AssetImage(review.image),
              ),

              const SizedBox(width: 12),

              /// Name + Stars
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      review.name,
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 6),

                    /// Stars
                    Row(
                      children: List.generate(
                        5,
                            (index) => Icon(
                          Icons.star,
                          size: 18,
                          color: index < review.rating
                              ? const Color(0xFF4CAF93)
                              : Colors.grey.shade300,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              /// Time Ago
              Text(
                review.timeAgo,
                style: TextStyle(
                  color: Colors.grey.shade400,
                  fontSize: 14,
                ),
              ),
            ],
          ),

          const SizedBox(height: 16),

          /// Review Text
          Text(
            review.review,
            style: const TextStyle(
              fontSize: 16,
              height: 1.5,
              color: Colors.black87,
            ),
          ),
        ],
      ),
    );
  }
}
