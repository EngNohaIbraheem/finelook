// success_bottom_sheet.dart
// import 'package:flutter/material.dart';
//
// class SuccessBottomSheet extends StatelessWidget {
//   const SuccessBottomSheet({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.fromLTRB(24, 32, 24, 40),
//       child: Column(
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           Container(
//             width: 80,
//             height: 80,
//             decoration: BoxDecoration(
//               color: Colors.grey.shade200,
//               shape: BoxShape.circle,
//             ),
//             child: const Icon(
//               Icons.check_circle_outline,
//               size: 40,
//               color: Colors.black,
//             ),
//           ),
//
//           const SizedBox(height: 24),
//
//           const Text(
//             'Your password has been changed',
//             style: TextStyle(
//               fontSize: 18,
//               fontWeight: FontWeight.bold,
//             ),
//             textAlign: TextAlign.center,
//           ),
//
//           const SizedBox(height: 8),
//
//           const Text(
//             'Welcome back! Discover now!',
//             style: TextStyle(color: Colors.grey),
//           ),
//
//           const SizedBox(height: 32),
//
//           SizedBox(
//             width: double.infinity,
//             height: 54,
//             child: ElevatedButton(
//               onPressed: () {
//
//               },
//               style: ElevatedButton.styleFrom(
//                 backgroundColor: Colors.black,
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(28),
//                 ),
//               ),
//               child: const Text('Browse home'),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';

import '../../../home/presentation/screens/Main_layout.dart';
import '../../../home/presentation/screens/home_screen.dart';

class SuccessBottomSheet extends StatelessWidget {
  const SuccessBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // "Image(image.assets/images/pic1.png),

          const Icon(Icons.check_circle_outline, size: 64),
          const SizedBox(height: 24),
          const Text(
            'Your password has been changed',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 8),
          const Text(
            'Welcome back! Discover now!',
            style: TextStyle(color: Colors.grey),
          ),
          const SizedBox(height: 32),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, MainLayout.routeName);

            },
            child: const Text('Browse home'),
          ),
        ],
      ),
    );
  }
}
