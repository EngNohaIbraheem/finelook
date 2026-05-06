import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, this.hint,
    this.obscure, this.controller,
    required String hintText,
    required bool obscureText});

  final String? hint;
  final bool? obscure;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 24),
      child: TextField(
        obscureText: obscure ?? false,
        controller: controller,
        decoration: InputDecoration(
          hintText: hint,
          border: const UnderlineInputBorder(),
        ),
      ),
    );
  }
}
