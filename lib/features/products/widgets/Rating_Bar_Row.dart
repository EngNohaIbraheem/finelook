import 'package:flutter/material.dart';

class RatingBars extends StatelessWidget {
  /// عدد التقييمات لكل نجمة (5 → 1)
  final Map<int, int> ratingsCount;

  /// إجمالي عدد التقييمات
  final int totalRatings;

  const RatingBars({
    super.key,
    required this.ratingsCount,
    required this.totalRatings,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(5, (index) {
        final int star = 5 - index;
        final int count = ratingsCount[star] ?? 0;

        final double value =
        totalRatings == 0 ? 0.0 : count / totalRatings;

        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 4),
          child: Row(
            children: [
              Text(
                '$star',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                ),
              ),
              const SizedBox(width: 4),
              const Icon(
                Icons.star,
                size: 14,
                color: Colors.teal,
              ),
              const SizedBox(width: 8),
              Expanded(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(4),
                  child: LinearProgressIndicator(
                    value: value, // ✅ double
                    minHeight: 6,
                    backgroundColor: Colors.white24,
                    valueColor:
                    const AlwaysStoppedAnimation<Color>(Colors.teal),
                  ),
                ),
              ),
            ],
          ),
        );
      }),
    );
  }
}
