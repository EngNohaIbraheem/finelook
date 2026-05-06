import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  final Color color;
  final List<String> images;

  const CategoryCard({
    super.key,
    required this.color,
    required this.images,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      height: 140,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(28),
      ),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          // Background circle
          Positioned(
            right: -20,
            top: 20,
            child: Container(
              width: 140,
              height: 140,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white.withOpacity(0.15),
              ),
            ),
          ),

          // Images overlay
          ...List.generate(images.length, (index) {
            return Positioned(
              right: 16,
              top: 0,
              bottom: 0,
              child: Image.asset(
                images[index],
                fit: BoxFit.contain,
              ),
            );
          }),
        ],
      ),
    );
  }
}

