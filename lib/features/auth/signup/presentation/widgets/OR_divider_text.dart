import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DividerText extends StatelessWidget {
  const DividerText({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'or sign up with',
        style: TextStyle(color: Colors.grey.shade600),
      ),
    );
  }
}
