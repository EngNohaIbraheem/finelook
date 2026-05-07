import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/widgets/custom_text_field.dart';
import '../manager/signup_cubit.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({super.key});

  @override
  Widget build(BuildContext context) {
    var cubit = context.read<SignupCubit>();

    return Column(
      children: [
        CustomTextField(
          hint: 'Enter your name',
          hintText: '',
          obscureText: true,
          controller: cubit.nameC,

        ),
        CustomTextField(
          hint: 'Email address',
          obscureText: true,
          hintText: '',
          controller: cubit.emailC,

        ),
        CustomTextField(
          hint: 'phone',
          obscureText: true,
          hintText: '',
          controller: cubit.phoneC,

        ),

        CustomTextField(
          hint: 'Password',
          obscure: true,
          hintText: '',
          obscureText: true,
          controller: cubit.passwordC,

        ),
        // const CustomTextField(
        //   hint: 'Confirm password',
        //   obscure: true,
        //   hintText: '',
        //   obscureText: true,
        //
        // ),
      ],
    );
  }
}
