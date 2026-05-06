import 'package:flutter/material.dart';
import 'package:newfashionstore/features/onboarding/presentation/widgets/onboarding_content.dart';
import 'package:newfashionstore/features/onboarding/presentation/widgets/onboarding_indecator.dart';
import '../../auth/login/presentation/screens/login_screen.dart';
import '../../home/presentation/screens/home_screen.dart';
import 'widgets/onboarding_background.dart';
import 'widgets/onboarding_page_item.dart';
import 'widgets/onboarding_button.dart';
import 'dart:async';
import 'package:flutter/material.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});
  static const String routeName = "OnboardingScreen";

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {

  @override
  void initState() {
    super.initState();

    // Auto navigate after 40 seconds
    Timer(const Duration(seconds: 40), () {
      if (mounted) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (_) => const LoginScreen()),
        );
      }
    });
  }

  void _goToHome() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (_) => const LoginScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [

          /// 🖼️ FULL BACKGROUND IMAGE
          Positioned.fill(
            child: Image.asset(
              'assets/images/onboardingimage.png',
              fit: BoxFit.cover,
            ),
          ),

          /// 🌫️ LIGHT OVERLAY (important for readability)
          Positioned.fill(
            child: Container(
              color: Colors.white.withOpacity(0.75),
            ),
          ),

          /// 📱 CONTENT
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  const SizedBox(height: 20),

                  /// 📝 TITLE
                  RichText(
                    text: const TextSpan(
                      children: [
                        TextSpan(
                          text: "Your style,\n",
                          style: TextStyle(
                            fontSize: 34,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF0D1B2A),
                          ),
                        ),
                        TextSpan(
                          text: "your way.",
                          style: TextStyle(
                            fontSize: 34,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFFB08968),
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 12),

                  const Text(
                    "Discover looks you love, shop effortlessly and express who you are.",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black54,
                      height: 1.5,
                    ),
                  ),

                  const SizedBox(height: 30),

                  /// ✨ FEATURES
                  const _FeatureItem(
                    icon: Icons.checkroom,
                    title: "Explore",
                    subtitle: "Find the latest trends\nand timeless pieces.",
                  ),
                  const _FeatureItem(
                    icon: Icons.favorite_border,
                    title: "Save",
                    subtitle: "Save your favorites\nand create your looks.",
                  ),
                  const _FeatureItem(
                    icon: Icons.shopping_bag_outlined,
                    title: "Shop",
                    subtitle: "Enjoy a smooth and\nsecure shopping experience.",
                  ),

                  const Spacer(),

                  /// 🚀 BUTTON
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: _goToHome,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF0D1B2A),
                        padding: const EdgeInsets.symmetric(vertical: 18),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40),
                        ),
                      ),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Get Started"),
                          SizedBox(width: 10),
                          Icon(Icons.arrow_forward),
                        ],
                      ),
                    ),
                  ),

                  const SizedBox(height: 16),

                  /// ⚪ DOTS
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _dot(true),
                      _dot(false),
                      _dot(false),
                    ],
                  ),

                  const SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _dot(bool isActive) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 4),
      width: isActive ? 10 : 8,
      height: isActive ? 10 : 8,
      decoration: BoxDecoration(
        color: isActive ? const Color(0xFF0D1B2A) : Colors.grey,
        shape: BoxShape.circle,
      ),
    );
  }
}

/// 🔹 Feature Item
class _FeatureItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;

  const _FeatureItem({
    required this.icon,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 14),
      child: Row(
        children: [
          Container(
            width: 42,
            height: 42,
            decoration: BoxDecoration(
              color: const Color(0xFFEDE6E0),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(icon, color: Colors.black87, size: 20),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 15)),
                Text(
                  subtitle,
                  style: const TextStyle(
                    fontSize: 13,
                    color: Colors.black54,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}


// class OnboardingScreen extends StatefulWidget {
//   const OnboardingScreen({super.key});
//   static const String routeName = "OnboardingScreen";
//
//   @override
//   State<OnboardingScreen> createState() => _OnboardingScreenState();
// }
//
// class _OnboardingScreenState extends State<OnboardingScreen> {
//
//   @override
//   void initState() {
//     super.initState();
//
//     // Auto navigate after 40 seconds
//     Timer(const Duration(seconds: 40), () {
//       if (mounted) {
//         Navigator.pushReplacement(
//           context,
//           MaterialPageRoute(builder: (_) => const HomeScreen()),
//         );
//       }
//     });
//   }
//
//   void _goToHome() {
//     Navigator.pushReplacement(
//       context,
//       MaterialPageRoute(builder: (_) => const HomeScreen()),
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: OnboardingContent(
//             onGetStarted: _goToHome
//         ),
//       ),
//     );
//   }
