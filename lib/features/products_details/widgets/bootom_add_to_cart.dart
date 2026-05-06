import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../cart/features/screens/mysreen_cart.dart';

class BottomAddToCart extends StatelessWidget {
  const BottomAddToCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: Container(
        padding: const EdgeInsets.all(16),
        color: Colors.white,
        child: ElevatedButton.icon(
          onPressed: () {
            Navigator.pushNamed(context, MyNewCartScreen.routeName);

          },
          icon: const Icon(Icons.shopping_bag_outlined),
          label: const Text('Add To Cart'),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.black,
            padding: const EdgeInsets.symmetric(vertical: 16),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(14),
            ),
          ),
        ),
      ),
    );
  }
}
