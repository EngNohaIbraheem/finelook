import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../screens/order_info_screen.dart';

class SubmitButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 52,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.grey.shade900,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(26),
          ),
        ),
        onPressed: () {
          Navigator.pushNamed(
            context,
            OrderInfoScreen
                .routeName,
          );

        },
        child: const Text(
          'Submit Review',
          style: TextStyle(fontSize: 16),
        ),
      ),
    );
  }
}
