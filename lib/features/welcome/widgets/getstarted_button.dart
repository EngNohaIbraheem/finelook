 import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../onboarding/presentation/onboarding_scrren.dart';

import '../../onboarding/presentation/onboarding_scrren.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({super.key, this.onPressed});
  final VoidCallback? onPressed;

 //  const OnboardingButton({super.key, this.onPressed}) {
 //   // TODO: implement OnboardingButton
 //   throw UnimplementedError();
 // }
  @override
  Widget build(BuildContext context) {
    return Container(
      //width: double.infinity,
      height: 56,
      width: 200,
      margin: const EdgeInsets.only(bottom: 48),
      // child: ElevatedButton(
      //   onPressed: () {
      //     Navigator.pushNamed(context, OnboardingScreen.routeName);
      //   },
      //   style: ElevatedButton.styleFrom(
      //     backgroundColor: Colors.grey,
      //     foregroundColor: Colors.white,
      //     shape: RoundedRectangleBorder(
      //       side: const BorderSide(color: Colors.white),
      //
      //     borderRadius: BorderRadius.circular(30),
      //     ),
      //   ),
      //   child: Text(
      //     'Get Started',
      //     style: GoogleFonts.poppins(
      //       fontSize: 16,
      //       fontWeight: FontWeight.w500,
      //     ),
      //   ),
      // ),
      child: OutlinedButton(
        onPressed: (){
          Navigator.pushNamed(context, OnboardingScreen.routeName);

        },
        style: OutlinedButton.styleFrom(
          side: const BorderSide(
            color: Colors.white,
            width: 2.2,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          backgroundColor: Colors.grey,
        ),
        child: const Text(
          'Shopping now',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.w500,
            letterSpacing: 0.3,
          ),
        ),
      ),

    );
  }
}
// class GetStartedButton extends StatelessWidget {
//   final VoidCallback? onPressed;
//
//   const GetStartedButton({super.key, this.onPressed});
//
//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       width: 240, // نفس العرض تقريبًا
//       height: 50,
//       child: ElevatedButton(
//         onPressed: (){
//           Navigator.pushNamed(context, OnboardingScreen.routeName);
//
//         },
//         style: OutlinedButton.styleFrom(
//           side: const BorderSide(
//             color: Colors.white,
//             width: 1.2,
//           ),
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(30),
//           ),
//           backgroundColor: Colors.grey,
//         ),
//         child: const Text(
//           'Get starting ',
//           style: TextStyle(
//             color: Colors.white,
//             fontSize: 16,
//             fontWeight: FontWeight.w500,
//             letterSpacing: 0.3,
//           ),
//         ),
//       ),
//     );
//   }
// }
