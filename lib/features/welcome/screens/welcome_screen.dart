// import 'package:flutter/material.dart';
// import '../widgets/welcome_content.dart';
//
// class WelcomeScreen extends StatelessWidget {
//   const WelcomeScreen({super.key});
//
//   static const String routeName = "welcomeScreen";
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
//           // Background Image
//           Positioned.fill(
//             child: Image.asset(
//               'assets/images/image 45.png',
//             //  fit: BoxFit.cover,
//             ),
//           ),
//
//           // Dark Overlay
//           Positioned.fill(
//             child: Container(
//               color: Colors.black.withOpacity(0.5),
//             ),
//           ),
//
//           // Content (Safe + Scroll handled inside)
//           const SafeArea(
//             child: WelcomeContent(),
//           ),
//         ],
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import '../../onboarding/presentation/onboarding_scrren.dart';
import '../widgets/welcome_content.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});
  static const String routeName = "welcomeScreen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
        'assets/images/welcomemarkatoo.png',
            fit: BoxFit.cover,
          ),
          const SizedBox(height: 100),

          Container(
            color: Colors.black.withOpacity(0.35),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: WelcomeContent(
              onGetStarted: () {
       Navigator.pushNamed(context, OnboardingScreen.routeName);
              },
            ),
          ),
        ],
      ),
    );
  }
}
