import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RatingRow extends StatelessWidget {
  const RatingRow({super.key, required String title});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ...List.generate(
          5,
              (_) => const Icon(Icons.star, color: Colors.green, size: 18),
        ),
        const SizedBox(width: 8),
        const Text('(83)', style: TextStyle(color: Colors.grey)),
      ],
    );
  }
}
