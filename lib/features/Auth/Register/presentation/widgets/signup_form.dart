import 'package:flutter/cupertino.dart';

import '../../../../../core/widgets/custom_text_field.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomTextField(
          hint: 'Enter your name',
          hintText: '',
          obscureText: true,
        ),
        CustomTextField(
          hint: 'Email address',
          obscureText: true,
          hintText: '',
        ),
        CustomTextField(
          hint: 'Password',
          obscure: true,
          hintText: '',
          obscureText: true,
        ),
        CustomTextField(
          hint: 'Confirm password',
          obscure: true,
          hintText: '',
          obscureText: true,
        ),
      ],
    );
  }
}
