import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newfashionstore/core/constants/app_strings.dart';
import 'package:newfashionstore/core/widgets/custom_text_field.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    /// cubit/////////////////
    /// var cubit = context.read<LoginCubit>();
    return Column(
      children: [
        CustomTextField(
          hint: 'Email address',
          obscureText: true,
          hintText: '',
         /// controller: cubit.emailC,
        ),
        const SizedBox(height: 20),
        CustomTextField(
          hint: 'Password',
          obscure: true,
          hintText: '',
          obscureText: true,
         /// controller: cubit.passC,
        ),
        const SizedBox(height: 10),
        Align(
          alignment: Alignment.centerRight,
          child: TextButton(
            onPressed: () {
              // Navigator.pushNamed(context, ForgotPasswordScreen.routeName);
            },
            child: const Text('Forgot Password?'),
          ),
        ),
      ],
    );
  }
}
