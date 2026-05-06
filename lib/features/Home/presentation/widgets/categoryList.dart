import 'package:flutter/material.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({super.key});

  @override
  Widget build(BuildContext context) {
    final categories = [
      {'icon': Icons.female, 'label': 'Women', 'active': true},
      {'icon': Icons.male, 'label': 'Men', 'active': false},
      {'icon': Icons.watch, 'label': 'Accessories', 'active': false},
      {'icon': Icons.brush, 'label': 'Beauty', 'active': false},
    ];

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: categories.map((cat) {
        return Column(
          children: [
            CircleAvatar(
              radius: 26,
              backgroundColor:
              cat['active'] as bool ? Colors.black : Colors.grey.shade200,
              child: Icon(
                cat['icon'] as IconData,
                color: cat['active'] as bool ? Colors.white : Colors.grey,
              ),
            ),
            const SizedBox(height: 6),
            Text(cat['label'] as String),
          ],
        );
      }).toList(),
    );
  }
}
