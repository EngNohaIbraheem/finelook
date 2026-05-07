import 'package:flutter/material.dart';

class SaveChangesButton extends StatelessWidget {
  const SaveChangesButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 52,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.black,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(28),
          ),
        ),
        onPressed: () {
          // TODO: call change password API
        },
        child: const Text(
          'Save changes',
          style: TextStyle(fontSize: 16),
        ),
      ),
    );
  }
}
