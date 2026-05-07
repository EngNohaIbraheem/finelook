import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DividerTextLogin extends StatelessWidget {
  const DividerTextLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'or Log in with',
        style: TextStyle(color: Colors.grey.shade600),
      ),
    );
  }
}
