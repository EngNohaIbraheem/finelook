import 'package:flutter/material.dart';

class UnderlineElevatedButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const UnderlineElevatedButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.transparent,
        elevation: 0,
        shadowColor: Colors.transparent,
        padding: EdgeInsets.zero,
      ),
      child: Text(
        text,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          decoration: TextDecoration.underline,
          color: Colors.black,
        ),
      ),
    );
  }
}
