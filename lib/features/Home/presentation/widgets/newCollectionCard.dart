import 'package:flutter/material.dart';

class NewCollectionCard extends StatelessWidget {
  const NewCollectionCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Container(
        height: 120,
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(16),
        ),
        padding: const EdgeInsets.all(16),
        child: const Align(
          alignment: Alignment.centerLeft,
          child: Text(
            "NEW COLLECTION\nHANG OUT\n& PARTY",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
