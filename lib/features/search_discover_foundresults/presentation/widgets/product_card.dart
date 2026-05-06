import 'package:flutter/material.dart';
import '../../models/product_model.dart';

class ProductCard extends StatefulWidget {
  final ProductModel product;

  const ProductCard({super.key, required this.product});

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  @override
  Widget build(BuildContext context) {
    final product = widget.product;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.asset(
                product.image,
                height: 180,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              right: 10,
              top: 10,
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    product.isFavorite = !product.isFavorite;
                  });
                },
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Icon(
                    product.isFavorite
                        ? Icons.favorite
                        : Icons.favorite_border,
                    color: Colors.red,
                  ),
                ),
              ),
            )
          ],
        ),
        const SizedBox(height: 8),
        Text(product.name),
        const SizedBox(height: 4),
        Text(
          "\$ ${product.price}",
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}