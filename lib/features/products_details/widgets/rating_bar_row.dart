import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RatingBarRow extends StatelessWidget {
  final int star;
  final double value; // from 0.0 to 1.0

  const RatingBarRow({
    super.key,
    required this.star,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        children: [
          Text(
            '$star',
            style: const TextStyle(color: Colors.white),
          ),
          const SizedBox(width: 6),
          const Icon(Icons.star, color: Colors.teal, size: 14),
          const SizedBox(width: 8),

          /// Progress Bar
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: LinearProgressIndicator(
                value: value,
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
  }
}
