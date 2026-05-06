import 'package:flutter/material.dart';

class MainBanner extends StatelessWidget {
  const MainBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Stack(
        children: [
          Image.asset(
            'assets/images/banner.png',
            height: 190,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          const Positioned(
            right: 20,
            top: 40,
            child: Text(
              'Autumn\nCollection\n2022',
              style: TextStyle(
                color: Colors.white,
                fontSize: 22,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
