import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'circle_icon.dart';

class ProductImageSection extends StatelessWidget {
  const ProductImageSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          Center(
            child: Image.asset(
              'assets/images/sweaterrrr.png',
              height: MediaQuery.of(context).size.height * 0.55,
              fit: BoxFit.contain,
            ),
          ),
          Positioned(
            left: 16,
            top: 16,
            child: CircleIcon(
              icon: Icons.arrow_back,
              onTap: () => Navigator.pop(context),
            ),
          ),
          Positioned(
            right: 16,
            top: 16,
            child: CircleIcon(
              icon: Icons.favorite,
              color: Colors.red,
              onTap: () {},
            ),
          ),
        ],
      ),
    );
  }
}
