import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newfashionstore/features/auth/login/presentation/manager/login_cubit.dart';
import '../../../signup/presentation/widgets/social_button.dart';
import '../widgets/OR_divider_text_login.dart';
import '../widgets/login_header.dart';
import '../widgets/login_form.dart';
import '../widgets/login_button.dart';
import '../widgets/signup_text.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  static const String routeName = "LoginScreen";

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginCubit(),
      child: const Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 42),

                  LoginHeader(),
                  SizedBox(height: 48),
                  LoginForm(),
                  SizedBox(height: 32),
                  LoginButton(),
                  SizedBox(height: 32),
                  DividerTextLogin(),
                  SizedBox(height: 32),
                  SocialButtons(),
                  SizedBox(height: 32),
                  SignUpTextButton(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
