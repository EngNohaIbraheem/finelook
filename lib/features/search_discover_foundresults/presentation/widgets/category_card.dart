import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  final String image;
  final Color color;
  final VoidCallback onTap;

  const CategoryCard({
    super.key,
    required this.image,
    required this.color,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 150,
        margin: const EdgeInsets.only(bottom: 16),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Stack(
          alignment: Alignment.centerRight,
          children: [
            Positioned(
              right: 10,
              child: Image.asset(
                image,
                height: 130,
              ),
            )
          ],
        ),
      ),
    );
  }
}