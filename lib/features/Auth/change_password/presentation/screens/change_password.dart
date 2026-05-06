import 'package:flutter/material.dart';
import '../widgets/change_password_form.dart';
import '../widgets/change_password_header.dart';
import '../widgets/save_changes_button.dart';

class ChangePasswordScreen extends StatelessWidget {
  const ChangePasswordScreen({super.key});
  static const  String routeName ="ChangePasswordScreen" ;

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 16),

              /// Header
              ChangePasswordHeader(),

              SizedBox(height: 32),

              /// Form
              ChangePasswordForm(),

              Spacer(),

              /// Button
              SaveChangesButton(),

              SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }
}
