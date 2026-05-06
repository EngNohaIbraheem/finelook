import 'package:flutter/material.dart';

class ProductReviewsSection extends StatelessWidget {
  const ProductReviewsSection({super.key, required String title});

  @override
  Widget build(BuildContext context) {
    return const ExpansionTile(
      title: Text('Reviews'),
      children: [
        Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('⭐ 5.0 out of 5 (83 ratings)'),
              SizedBox(height: 6),
              Text('⭐ 4.0 out of 5 (83 ratings)'),
              SizedBox(height: 6),
              Text('⭐ 3.0 out of 5 (83 ratings)'),
              SizedBox(height: 6),
              Text('⭐ 2.0 out of 5 (83 ratings)'),
              SizedBox(height: 6),
              Text('⭐ 1.0 out of 5 (83 ratings)'),
            ],
          ),
        ),
      ],
    );
  }
}
