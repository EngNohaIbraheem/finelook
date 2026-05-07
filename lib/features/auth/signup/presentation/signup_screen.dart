import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newfashionstore/core/widgets/custom_text_field.dart';
import 'package:newfashionstore/features/auth/login/presentation/manager/login_cubit.dart';
import 'package:newfashionstore/features/auth/signup/presentation/widgets/OR_divider_text.dart';
import 'package:newfashionstore/features/auth/signup/presentation/widgets/Signup_button.dart';
import 'package:newfashionstore/features/auth/signup/presentation/widgets/Signup_title.dart';
import 'package:newfashionstore/features/auth/signup/presentation/widgets/signup_form.dart';
import 'package:newfashionstore/features/auth/signup/presentation/widgets/social_button.dart';
import 'package:newfashionstore/features/auth/signup/presentation/widgets/text_login.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  static const String routeName = "SignUpScreen";

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 40),
                SignUpTitle(),
                SizedBox(height: 40),
                SignUpForm(),
                SizedBox(height: 30),
                SignUpButton(),
                SizedBox(height: 24),
                DividerText(),
                SizedBox(height: 16),
                SocialButtons(),
                SizedBox(height: 32),
                LoginText(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
