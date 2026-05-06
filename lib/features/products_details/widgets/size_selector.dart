import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SizeSelector extends StatelessWidget {
  const SizeSelector();

  @override
  Widget build(BuildContext context) {
    final sizes = ['S', 'M', 'L'];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Size', style: TextStyle(color: Colors.grey)),
        const SizedBox(height: 10),
        Row(
          children: sizes.map((s) {
            final isSelected = s == 'L';
            return Container(
              margin: const EdgeInsets.only(right: 8),
              width: 32,
              height: 32,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: isSelected ? Colors.black : Colors.grey.shade200,
              ),
              child: Text(
                s,
                style: TextStyle(
                  color: isSelected ? Colors.white : Colors.grey,
                ),
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}
