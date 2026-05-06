import 'package:flutter/material.dart';

class BoardCard extends StatelessWidget {
  final String title;
  final int itemsCount;

  const BoardCard({
    super.key,
    required this.title,
    required this.itemsCount,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: SizedBox(
            height: 180,
            child: Row(
              children: [
                _buildImage(),
                const SizedBox(width: 4),
                Expanded(
                  child: Column(
                    children: [
                      Expanded(child: _buildImage()),
                      const SizedBox(height: 4),
                      Expanded(child: _buildImage()),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),

        const SizedBox(height: 10),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  "$itemsCount items",
                  style: const TextStyle(color: Colors.grey),
                ),
              ],
            ),
            const Icon(Icons.arrow_forward_ios, size: 16),
          ],
        ),

        const Divider(height: 30),
      ],
    );
  }

  Widget _buildImage() {
    return Expanded(
      child: Image.network(
        "https://images.unsplash.com/photo-1520975922284-9e0ce82759f3",
        fit: BoxFit.cover,
      ),
    );
  }
}
