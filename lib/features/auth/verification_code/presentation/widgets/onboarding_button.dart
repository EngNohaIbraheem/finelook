// import 'package:flutter/material.dart';
//
// class OnboardingButton extends StatelessWidget {
//   final VoidCallback onPressed;
//
//   const OnboardingButton({super.key, required this.onPressed});
//
//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       width: MediaQuery.of(context).size.width * 0.7,
//       height: 60,
//       child: OutlinedButton(
//         onPressed: onPressed,
//         style: OutlinedButton.styleFrom(
//           side: const BorderSide(color: Colors.grey, width: 1.5),
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(30),
//           ),
//           backgroundColor: Colors.grey,
//         ),
//         child: const Text(
//           "Shopping now",
//           style: TextStyle(color: Colors.white, fontSize: 18),
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';

class VerificationButton extends StatelessWidget {
  final VoidCallback? onPressed;

  const VerificationButton({super.key, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 240, // نفس العرض تقريبًا
      height: 50,
      child: OutlinedButton(
        onPressed: onPressed,
        style: OutlinedButton.styleFrom(
          side: const BorderSide(
            color: Colors.white,
            width: 1.2,
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
