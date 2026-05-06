import 'package:flutter/material.dart';

import '../../../core/constants/app_coclors.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  'assets/images/product.jpg',
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),

              Positioned(
                top: 8,
                right: 8,
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.favorite_border,
                    color: Colors.grey,
                  ),
                ),
              ),
            ],
          ),
        ),

        const SizedBox(height: 8),

        const Text(
          'Knitted Dress',
          style: TextStyle(fontWeight: FontWeight.w600),
        ),

        const SizedBox(height: 4),

        const Text(
          '\$64.00',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),

        const SizedBox(height: 4),

        Row(
          children: List.generate(
            5,
                (index) => Icon(
              Icons.star,
              size: 14,
              color: AppColors.star,
            ),
          ),
        ),
      ],
    );
  }
}
