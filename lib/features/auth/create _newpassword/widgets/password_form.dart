// import 'package:flutter/material.dart';
// import 'package:newfashionstore/features/auth/create%20_newpassword/widgets/sucess_buttom_sheet.dart';
// import '../../../../core/widgets/custom_text_field.dart';
// import 'confirm_button.dart';
// import 'custom_text_field_newpassword.dart';
//
// class PasswordForm extends StatefulWidget {
//   const PasswordForm({super.key});
//
//   @override
//   State<PasswordForm> createState() => _PasswordFormState();
// }
//
// class _PasswordFormState extends State<PasswordForm> {
//   final _formKey = GlobalKey<FormState>();
//
//   final _passwordController = TextEditingController();
//   final _confirmPasswordController = TextEditingController();
//
//   @override
//   void dispose() {
//     _passwordController.dispose();
//     _confirmPasswordController.dispose();
//     super.dispose();
//   }
//
//   void _submit() {
//     if (_formKey.currentState!.validate()) {
//       showModalBottomSheet(
//         context: context,
//         isScrollControlled: true,
//         shape: const RoundedRectangleBorder(
//           borderRadius:
//           BorderRadius.vertical(top: Radius.circular(24)),
//         ),
//         builder: (_) => const SuccessBottomSheet(),
//       );
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Form(
//       key: _formKey,
//       child: Column(
//         children: [
//           CustomTextFieldNewpassword(
//             label: 'Password',
//             controller: _passwordController,
//             isPassword: true,
//             validator: _passwordValidator,
//           ),
//           const SizedBox(height: 24),
//           CustomTextFieldNewpassword(
//             label: 'Confirm Password',
//             controller: _confirmPasswordController,
//             isPassword: true,
//             validator: _confirmPasswordValidator,
//           ),
//           const Spacer(),
//           ConfirmButton(
//             isEnabled: true,
//             onPressed: _submit,
//           ),
//           const SizedBox(height: 24),
//         ],
//       ),
//     );
//   }
//
//   String? _passwordValidator(String? value) {
//     if (value == null || value.isEmpty) {
//       return 'Password is required';
//     }
//     if (value.length < 8) {
//       return 'Password must be at least 8 characters';
//     }
//     return null;
//   }
//
//   String? _confirmPasswordValidator(String? value) {
//     if (value == null || value.isEmpty) {
//       return 'Confirm your password';
//     }
//     if (value != _passwordController.text) {
//       return 'Passwords do not match';
//     }
//     return null;
//   }
// }
import 'package:flutter/material.dart';
import 'package:newfashionstore/features/auth/create%20_newpassword/widgets/sucess_buttom_sheet.dart';
import '../../../../core/widgets/custom_text_field.dart';
import 'confirm_button.dart';
import 'custom_text_field_newpassword.dart';

class PasswordForm extends StatefulWidget {
  const PasswordForm({super.key});

  @override
  State<PasswordForm> createState() => _PasswordFormState();
}

class _PasswordFormState extends State<PasswordForm> {
  final _formKey = GlobalKey<FormState>();
  final _passwordController = TextEditingController();
  final _confirmController = TextEditingController();

  bool _isButtonEnabled = false;

  void _validateForm() {
    final isValid =
        _passwordController.text.length >= 8 &&
            _passwordController.text == _confirmController.text;

    setState(() => _isButtonEnabled = isValid);
  }

  void _onConfirm() {
    if (!_formKey.currentState!.validate()) return;

    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
      ),
      builder: (_) => const SuccessBottomSheet(),
    );
  }

  @override
  void dispose() {
    _passwordController.dispose();
    _confirmController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 40),

          const _Header(),

          const SizedBox(height: 40),

          CustomTextFieldNewpass(
            label: 'Password',
            controller: _passwordController,
            isPassword: true,
            onChanged: _validateForm,
            validator: _passwordValidator,
          ),

          const SizedBox(height: 24),

          CustomTextFieldNewpass(
            label: 'Confirm Password',
            controller: _confirmController,
            isPassword: true,
            onChanged: _validateForm,
            validator: _confirmPasswordValidator,
          ),

          const Spacer(),

          ConfirmButton(
            isEnabled: _isButtonEnabled,
            onPressed: _onConfirm,
          ),

          const SizedBox(height: 24),
        ],
      ),
    );
  }

  String? _passwordValidator(String? value) {
    if (value == null || value.length < 8) {
      return 'Password must be at least 8 characters';
    }
    return null;
  }

  String? _confirmPasswordValidator(String? value) {
    if (value != _passwordController.text) {
      return 'Passwords do not match';
    }
    return null;
  }
}

class _Header extends StatelessWidget {
  const _Header();

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Create new password',
          style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 8),
        Text(
          'Your new password must be different\nfrom previously used password',
          style: TextStyle(color: Colors.grey),
        ),
      ],
    );
  }
}
