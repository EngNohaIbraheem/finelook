import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../home/presentation/screens/Main_layout.dart';
import '../../../../home/presentation/screens/home_screen.dart';
import '../../../../welcome/screens/welcome_screen.dart';
import '../manager/signup_cubit.dart';

class SignUpButton extends StatelessWidget {
  const SignUpButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<SignupCubit, SignupState>(
      listener: (context, state) {
        if (state is SignupSuccess) {
          Navigator.pushNamed(context, MainLayout.routeName);
        } else if (state is SignupFailure) {
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text(state.msg)));
        }
      },
      child: BlocBuilder<SignupCubit, SignupState>(
        builder: (context, state) {
          var cubit = context.read<SignupCubit>();

          return Center(
            child: SizedBox(
              width: 200,
              height: 50,
              child: state is SignupLoading
                  ? const Center(child: CircularProgressIndicator())
                  : ElevatedButton(
                      onPressed: () {

                        if (cubit.emailC.text.isNotEmpty &&
                            cubit.passwordC.text.isNotEmpty &&
                            cubit.phoneC.text.isNotEmpty &&
                            cubit.nameC.text.isNotEmpty) {
                          cubit.signup(
                            email: cubit.emailC.text,
                            password: cubit.passwordC.text,
                            phone: cubit.phoneC.text,
                            name: cubit.nameC.text,
                          );
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                  content: Text("Please Fill Texts")));
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF2D1B16),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      child: const Text(
                        'Sigup',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.2,
                        ),
                      ),
                    ),
            ),
          );
        },
      ),
    );
  }
}
