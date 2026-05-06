import 'package:flutter/material.dart';

class AgreeTermsRow extends StatefulWidget {
  const AgreeTermsRow({super.key});

  @override
  State<AgreeTermsRow> createState() => _AgreeTermsRowState();
}

class _AgreeTermsRowState extends State<AgreeTermsRow> {
  bool agreed = true;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: agreed,
          activeColor: Colors.green,
          onChanged: (value) {
            setState(() {
              agreed = value ?? false;
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
