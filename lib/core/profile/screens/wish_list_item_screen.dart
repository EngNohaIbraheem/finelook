import 'package:flutter/material.dart';

class WishlistItemsScreen extends StatelessWidget {
  const WishlistItemsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('My Wishlist')),
      body: GridView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: 4,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: .65,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
        ),
        itemBuilder: (_, index) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
              ),
              const SizedBox(height: 8),
              const Text('Front Tie Mini Dress'),
              const Text('\$59.00',
                  style: TextStyle(fontWeight: FontWeight.bold)),
            ],
          );
        },
      ),
    );
  }
}
