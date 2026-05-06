// import 'package:flutter/material.dart';
// import 'package:newfashionstore/features/auth/create%20_newpassword/widgets/sucess_buttom_sheet.dart';
//
// class ConfirmButton extends StatelessWidget {
//   final VoidCallback onPressed;
//   final bool isEnabled;
//   final String title;
//
//   const ConfirmButton({
//     super.key,
//     required this.onPressed,
//     this.isEnabled = true,
//     this.title = 'Confirm',
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       width: double.infinity,
//       height: 54,
//       child: ElevatedButton(
//         onPressed: isEnabled ? onPressed :
//         (){
//           Navigator.pushNamed(
//               context, SuccessBottomSheet.routeName);
//
//
//         },
//         style: ElevatedButton.styleFrom(
//           backgroundColor:
//           isEnabled ? Colors.black : Colors.grey.shade400,
//           disabledBackgroundColor: Colors.grey.shade400,
//           elevation: 0,
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(28),
//           ),
//         ),
//         child: Text(
//           title,
//           style: const TextStyle(
//             fontSize: 16,
//             fontWeight: FontWeight.w600,
//             color: Colors.white,
//           ),
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';

class ConfirmButton extends StatelessWidget {
  final bool isEnabled;
  final VoidCallback onPressed;

  const ConfirmButton({
    super.key,
    required this.isEnabled,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 54,
      width: double.infinity,
      child: ElevatedButton(
        onPressed: isEnabled ? onPressed : null,
        style: ElevatedButton.styleFrom(
          backgroundColor:
          isEnabled ? Colors.black : Colors.grey.shade400,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(28),
          ),
        ),
        child: const Text(
          'Confirm',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
