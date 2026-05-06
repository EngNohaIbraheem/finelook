import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class SocialIcon extends StatelessWidget {
  final String image;
  final VoidCallback onTap;
  final double size;

  const SocialIcon({
    super.key,
    required this.image,
    required this.onTap,
    this.size = 60, // 👈 default big size
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(size),
      onTap: onTap,
      child: Image.asset(
        image,
        width: size,
        height: size,
        fit: BoxFit.contain,
      ),
    );
  }
}
