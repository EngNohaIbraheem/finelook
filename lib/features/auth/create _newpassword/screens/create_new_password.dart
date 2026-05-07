// import 'package:flutter/material.dart';
// import '../widgets/header_section_new_password.dart';
// import '../widgets/password_form.dart';
// import '../widgets/back_button_widget.dart';
//
// class CreateNewPasswordScreen extends StatelessWidget {
//   const CreateNewPasswordScreen({super.key});
//   static const  String routeName ="CreateNewPasswordScreen" ;
//
//   @override
//   Widget build(BuildContext context) {
//     return const Scaffold(
//       backgroundColor: Colors.white,
//       body: SafeArea(
//         child: Padding(
//           padding: EdgeInsets.symmetric(horizontal: 25),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               SizedBox(height: 13),
//               BackButtonWidget(),
//               SizedBox(height: 33),
//               HeaderSection(),
//               SizedBox(height: 41),
//               Expanded(child: PasswordForm()),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import '../widgets/password_form.dart';

class CreateNewPasswordScreen extends StatelessWidget {
  const CreateNewPasswordScreen({super.key});
  static const  String routeName ="CreateNewPasswordScreen" ;

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: PasswordForm(),
        ),
      ),
    );
  }
}
