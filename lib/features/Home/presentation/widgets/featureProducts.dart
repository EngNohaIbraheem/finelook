import 'package:flutter/material.dart';
import '../../../products/screens/product_screen.dart';
import '../../../products_details/screens/products_details_content_screen.dart';
import 'product_card.dart';

class FeaturedProducts extends StatelessWidget {
  const FeaturedProducts({super.key});

  @override
  Widget build(BuildContext context) {
    final products = [
      GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => const ProductDetailsContentScreen(),
          ),
        );
      },
        child: const ProductCard(
          image: 'assets/images/longsleeve.png',
          title: 'Turtleneck Sweater',
          price: '\$39.99',
        ),
      ),
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => const ProductDetailsContentScreen(),
            ),
          );
        },
        child: const ProductCard(
          image: 'assets/images/summercol.png',
          title: 'Long Sleeve Dress',
          price: '\$45.00',
        ),
      ),

      // const ProductCard(
      //   image: 'assets/images/summercol.png',
      //   title: 'Long Sleeve Dress',
      //   price: '\$45.00',
      // ),
      const ProductCard(
        image: 'assets/images/p3.png',
        title: 'Sportwear Set',
        price: '\$80.00',
      ),
    ];

    return SizedBox(
      height: 280,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: products.length, // ✅ exactly 3
        separatorBuilder: (_, __) => const SizedBox(width: 10),
        itemBuilder: (_, index) => products[index],
      ),
    );
  }
}
