import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newfashionstore/core/widgets/custom_text_field.dart';
import 'package:newfashionstore/features/auth/forget_password/presentation/forgetpassword_screen.dart';
import 'package:newfashionstore/features/auth/login/presentation/manager/login_cubit.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    var cubit = context.read<LoginCubit>();
    return Column(
      children: [
        CustomTextField(
          hint: 'Email address',
          obscureText: true,
          hintText: '',
          controller: cubit.emailC,
        ),
        const SizedBox(height: 20),
        CustomTextField(
          hint: 'Password',
          obscure: true,
          hintText: '',
          obscureText: true,
          controller: cubit.passC,
        ),
        const SizedBox(height: 10),
        Align(
          alignment: Alignment.centerRight,
          child: TextButton(
            onPressed: () {
              Navigator.pushNamed(context, ForgotPasswordScreen.routeName);
            },
            child: const Text('Forgot Password?'),
          ),
        ),
      ],
    );
  }
}
