import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ColorSelector extends StatelessWidget {
  const ColorSelector();

  @override
  Widget build(BuildContext context) {
    final colors = [
      const Color(0xffEAC4A8),
      Colors.black,
      Colors.redAccent,
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Color', style: TextStyle(color: Colors.grey)),
        const SizedBox(height: 10),
        Row(
          children: colors
              .map(
                (c) => Container(
              margin: const EdgeInsets.only(right: 10),
              width: 26,
              height: 26,
              decoration: BoxDecoration(
                color: c,
                shape: BoxShape.circle,
              ),
            ),
          )
              .toList(),
        ),
      ],
    );
  }
}
