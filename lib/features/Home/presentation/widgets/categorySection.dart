import 'package:flutter/material.dart';

class CategorySection extends StatelessWidget {
  const CategorySection({super.key});

  @override
  Widget build(BuildContext context) {
    final categories = [
      {'icon': Icons.female, 'title': 'Women'},
      {'icon': Icons.male, 'title': 'Men'},
      {'icon': Icons.watch, 'title': 'Accessories'},
      {'icon': Icons.brush, 'title': 'Beauty'},
    ];

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: List.generate(
        categories.length,
            (index) => Column(
          children: [
            CircleAvatar(
              radius: 26,
              backgroundColor:
              index == 0 ? Colors.black : Colors.grey.shade200,
              child: Icon(
                categories[index]['icon'] as IconData,
                color: index == 0 ? Colors.white : Colors.grey,
              ),
            ),
            const SizedBox(height: 6),
            Text(categories[index]['title'] as String),
          ],
        ),
      ),
    );
  }
}
