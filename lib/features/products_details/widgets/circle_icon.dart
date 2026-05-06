import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CircleIcon extends StatelessWidget {
  final IconData icon;
  final VoidCallback onTap;
  final Color? color;

  const CircleIcon({
    required this.icon,
    required this.onTap,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(50),
      child: Container(
        width: 44,
        height: 44,
        decoration: const BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
        ),
        child: Icon(icon, color: color ?? Colors.black),
      ),
    );
  }
}
