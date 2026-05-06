// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'getstarted_button.dart';
//
// class WelcomeContent extends StatelessWidget {
//   const WelcomeContent({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       child: Container(
//         child: Column(
//           children: [
//             const SizedBox(height: 400),
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 24),
//               child: Column(
//                 children: [
//                   const SizedBox(height: 8),
//
//                   Text(
//                     'Welcome to Fluxstore!',
//                     style: GoogleFonts.poppins(
//                       fontSize: 28,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.white,
//                     ),
//                     textAlign: TextAlign.center,
//                   ),
//                   const SizedBox(height: 8),
//                   Text(
//                     'The home for a fashionista',
//                     style: GoogleFonts.poppins(
//                       fontSize: 16,
//                       color: Colors.white,
//                       fontWeight: FontWeight.w300,
//                     ),
//                     textAlign: TextAlign.center,
//                   ),
//                   const SizedBox(height: 100),
//
//                   const GetStartedButton(),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';

import 'getstarted_button.dart';

class WelcomeContent extends StatelessWidget {
  final VoidCallback onGetStarted;

  const WelcomeContent({
    super.key,
    required this.onGetStarted,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        const Text(
          'Welcome to Fluxstore!',
          style: TextStyle(
            color: Colors.white,
            fontSize: 26,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 8),
        const Text(
          'The home for a fashionista',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,

            fontSize: 16,
          ),
        ),
        // const SizedBox(height: 30),
        // SizedBox(
        //   width: 220,
        //   height: 52,
        //   child: OutlinedButton(
        //     onPressed: onGetStarted,
        //     style: OutlinedButton.styleFrom(
        //       side: const BorderSide(color: Colors.white),
        //       shape: RoundedRectangleBorder(
        //            backgroundColor: Colors.grey,
        //
        //         borderRadius: BorderRadius.circular(30),
        //       ),
        //     ),
        //     child: const Text(
        //       'Get Started',
        //       style: TextStyle(
        //         color: Colors.white,
        //         fontSize: 16,
        //       ),
        //     ),
        //   ),
        // ),
        const SizedBox(height: 60),

        GetStartedButton(),
        const SizedBox(height: 60),
      ],
    );
  }
}
