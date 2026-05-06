import 'package:flutter/material.dart';
import 'feature_item.dart';

class OnboardingContent extends StatelessWidget {
  final VoidCallback onGetStarted;

  const OnboardingContent({super.key, required this.onGetStarted});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Image.asset(
              'assets/images/onboardingimage.png',
              fit: BoxFit.cover,
            ),
          ),

          const SizedBox(height: 20),

          const Text(
            "Your style,\nyour way.",
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),

          const SizedBox(height: 10),

          const Text(
            "Discover looks you love, shop effortlessly and express who you are.",
            style: TextStyle(color: Colors.grey),
          ),

          const SizedBox(height: 20),

          const FeatureItem(
            icon: Icons.checkroom,
            title: "Explore",
            subtitle: "Find the latest trends",
          ),

          const FeatureItem(
            icon: Icons.favorite_border,
            title: "Save",
            subtitle: "Save your favorites",
          ),

          const FeatureItem(
            icon: Icons.shopping_bag_outlined,
            title: "Shop",
            subtitle: "Smooth shopping experience",
          ),

          const SizedBox(height: 20),

          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: onGetStarted,
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                backgroundColor: Colors.blue.shade900,
              ),
              child: const Text("Get Started"),
            ),
          ),

          const SizedBox(height: 10),
        ],
      ),
    );
  }
}