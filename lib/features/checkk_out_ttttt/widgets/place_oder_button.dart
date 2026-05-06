import 'package:flutter/material.dart';

import '../screens/order_completed_screen.dart';

class PlaceOrderButton extends StatelessWidget {
  const PlaceOrderButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 55,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.black,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        onPressed: () {
          Navigator.pushNamed(context, OrderCompletedScreen.routeName);

        },
        child: const Text(
          'Place my order',
          style: TextStyle(fontSize: 16),
        ),
      ),
    );
  }
}
