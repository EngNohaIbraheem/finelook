import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String label;
  final bool obscureText;
  final VoidCallback? onToggleVisibility;
  final TextEditingController? controller;

  const CustomTextField({
    super.key,
    required this.label,
    this.obscureText = false,
    this.onToggleVisibility,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: obscureText,
      decoration: InputDecoration(
        labelText: label,
        suffixIcon: onToggleVisibility == null
            ? null
            : IconButton(
          icon: Icon(
            obscureText
                ? Icons.visibility_off_outlined
                : Icons.visibility_outlined,
          ),
          onPressed: onToggleVisibility,
        ),
      ),
    );
  }
}
