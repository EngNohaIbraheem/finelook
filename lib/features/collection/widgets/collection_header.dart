import 'package:flutter/material.dart';

class CollectionHeader extends StatelessWidget {
  const CollectionHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          'assets/images/header.jpg',
          height: 320,
          width: double.infinity,
          fit: BoxFit.cover,
        ),

        Positioned(
          top: 50,
          left: 16,
          child: CircleAvatar(
            backgroundColor: Colors.white,
            child: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () => Navigator.pop(context),
            ),
          ),
        ),

        const Positioned(
          right: 24,
          bottom: 40,
          child: Text(
            'Autumn\nCollection\n2021',
            textAlign: TextAlign.right,
            style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
