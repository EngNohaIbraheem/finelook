import 'package:flutter/material.dart';
import 'custom_text_field.dart';

class ChangePasswordForm extends StatefulWidget {
  const ChangePasswordForm({super.key});

  @override
  State<ChangePasswordForm> createState() => _ChangePasswordFormState();
}

class _ChangePasswordFormState extends State<ChangePasswordForm> {
  bool hideCurrent = true;
  bool hideNew = true;
  bool hideConfirm = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextField(
          label: 'Current Password',
          obscureText: hideCurrent,
          onToggleVisibility: () {
            setState(() => hideCurrent = !hideCurrent);
          },
        ),
        const SizedBox(height: 24),

        CustomTextField(
          label: 'New Password',
          obscureText: hideNew,
          onToggleVisibility: () {
            setState(() => hideNew = !hideNew);
          },
        ),
        const SizedBox(height: 24),

        CustomTextField(
          label: 'Confirm New Password',
          obscureText: hideConfirm,
          onToggleVisibility: () {
            setState(() => hideConfirm = !hideConfirm);
          },
        ),
      ],
    );
  }
}
