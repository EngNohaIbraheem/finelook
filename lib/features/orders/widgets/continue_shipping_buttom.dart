import 'package:flutter/material.dart';

import '../screens/track_order_screen.dart';

class ContinueShoppingButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 52,
      width: double.infinity,
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
            TrackOrderScreen
              .routeName,
          );
        },
        child: const Text(
          'Continue shopping',
          style: TextStyle(fontSize: 16),
        ),
      ),
    );
  }
}
