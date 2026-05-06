import 'package:flutter/material.dart';
import 'package:newfashionstore/features/home/presentation/widgets/recommended_product_card.dart';

class RecommendedList extends StatelessWidget {
  const RecommendedList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: 2,
        separatorBuilder: (_, __) => const SizedBox(width: 16),
        itemBuilder: (context, index) {
          final items = [
            {
              'image': 'assets/images/image 64.png',
              'title': 'White fashion hoodie',
              'price': '\$29.00',
            },
            {
              'image': 'assets/images/image 65.png',
              'title': 'Cotton T-shirt',
              'price': '\$30.00',
            },
          ];

          return RecommendedProductCard(
            image: items[index]['image']!,
            title: items[index]['title']!,
            price: items[index]['price']!,
          );
        },
      ),
    );
  }
}
