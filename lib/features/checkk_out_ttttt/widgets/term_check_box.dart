import 'package:flutter/material.dart';

class TermsCheckbox extends StatefulWidget {
  const TermsCheckbox({super.key});

  @override
  State<TermsCheckbox> createState() => _TermsCheckboxState();
}

class _TermsCheckboxState extends State<TermsCheckbox> {
  bool isChecked = true;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: isChecked,
          activeColor: Colors.green,
          onChanged: (value) {
            setState(() {
              isChecked = value!;
            });
          },
        ),
        Expanded(
          child: Text.rich(
            TextSpan(
              text: 'I agree to ',
              children: [
                TextSpan(
                  text: 'Terms and conditions',
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                    color: Colors.grey.shade700,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
