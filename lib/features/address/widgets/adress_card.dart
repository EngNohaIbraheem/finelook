import 'package:flutter/material.dart';
import '../models/adress_model.dart';

class AddressCard extends StatelessWidget {
  final AddressModel address;
  final VoidCallback onTap;

  const AddressCard({
    super.key,
    required this.address,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(bottom: 16),
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
              color: address.isSelected ? Colors.black : Colors.grey.shade300),
        ),
        child: Row(
          children: [
            Icon(
              address.isSelected
                  ? Icons.radio_button_checked
                  : Icons.radio_button_off,
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(address.title,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 16)),
                  const SizedBox(height: 4),
                  Text(address.address,
                      style: const TextStyle(color: Colors.grey)),
                ],
              ),
            ),
            TextButton(
              onPressed: () {},
              child: const Text("Edit",
                  style: TextStyle(color: Colors.red)),
            )
          ],
        ),
      ),
    );
  }
}
