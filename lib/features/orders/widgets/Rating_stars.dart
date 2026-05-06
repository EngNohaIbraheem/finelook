import 'package:flutter/material.dart';

class RatingStars extends StatefulWidget {
  const RatingStars({super.key});

  @override
  State<RatingStars> createState() => _RatingStarsState();
}

class _RatingStarsState extends State<RatingStars> {
  int rating = 4;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(5, (index) {
        return IconButton(
          icon: Icon(
            Icons.star,
            color: index < rating ? Colors.green : Colors.grey.shade300,
            size: 32,
          ),
          onPressed: () {
            setState(() => rating = index + 1);
          },
        );
      }),
    );
  }
}
