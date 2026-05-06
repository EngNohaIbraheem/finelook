import 'package:flutter/material.dart';

import 'Rating_Bar_Row.dart';
import 'Rating_value.dart';

class RatingSummaryWidget extends StatelessWidget {
  final double rating;
  final int totalRatings;

  const RatingSummaryWidget({
    super.key,
    required this.rating,
    required this.totalRatings,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RatingValue(
          rating: rating,
          totalRatings: totalRatings,
        ),

        // RatingValue(
        //   rating: rating,
        //   totalRatings: totalRatings,
        // ),
        const SizedBox(width: 24),
        // const Expanded(
        //   child: RatingBars(ratingsCount: {}, totalRatings: null,),
        // ),
        RatingBars(
          ratingsCount: const {
            5: 22,
            4: 7,
            3: 3,
            2: 1,
            1: 0,
          },
          totalRatings: totalRatings,
        ),
      ],
    );
  }
}
