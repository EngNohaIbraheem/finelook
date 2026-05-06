import 'package:flutter/material.dart';

class ReviewTextField extends StatelessWidget {
  const ReviewTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: Column(
        children: const [
          TextField(
            maxLines: 4,
            maxLength: 50,
            decoration: InputDecoration(
              hintText: 'Would you like to write anything about this product?',
              border: InputBorder.none,
              counterText: '',
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Text(
              '50 characters',
              style: TextStyle(color: Colors.grey, fontSize: 12),
            ),
          ),
        ],
      ),
    );
  }
}
