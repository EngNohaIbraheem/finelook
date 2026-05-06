import 'package:flutter/material.dart';

class SimilarProductsSection extends StatelessWidget {
  const SimilarProductsSection({super.key, required String title});

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: const Text('Similar Product'),
      children: [
        SizedBox(
          height: 200,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 3,
            itemBuilder: (_, index) => Container(
              width: 140,
              margin: const EdgeInsets.all(8),
              child: Column(
                children: [
                  Expanded(
                    child: Image.asset(
                      'assets/images/p2simelar.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(height: 6),
                  const Text('Gym Crop Top'),
                  const Text('\$39.99'),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
