import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../home/presentation/screens/Main_layout.dart';
import '../../../../home/presentation/screens/home_screen.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return
        // BlocListener<LoginCubit, LoginState>(
        //  listener: (context, state) {
        // if (state is LoginSuccess) {
        //   Navigator.pushNamed(context, MainLayout.routeName);
        //  } else if (state is LoginFailure) {
        //    ScaffoldMessenger.of(context)
        //      .showSnackBar(SnackBar(content: Text(state.msg)));
        //    }
        //   },
        // child:
        // BlocBuilder<LoginCubit, LoginState>(
        // builder: (context, state) {
        //  var cubit = context.read<LoginCubit>();
        // return
        Center(
            child: SizedBox(
      width: 200,
      height: 50,
      child:
          // state is LoginLoading
          //? const Center(child: CircularProgressIndicator())
          //:
          ElevatedButton(
        onPressed: () {
          //  if (cubit.emailC.text.isNotEmpty &&
          //      cubit.passC.text.isNotEmpty) {
          //   cubit.login(
          //     email: cubit.emailC.text, pass: cubit.passC.text);
          //   }else {
          //  ScaffoldMessenger.of(context)
          //     .showSnackBar(SnackBar(content: Text("Please Fill Texts")));
          //     }
          //  },
          style:
          ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFF1D6DC9),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
          );
        },
        child: const Text(
          'LOG IN',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            letterSpacing: 1.2,
          ),
          // ),
          //),
          // ),
        ),
      ),
    ));
    // );
  }
}
