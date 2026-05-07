import 'package:flutter/material.dart';

class OtpInput extends StatefulWidget {
  final TextEditingController controller;

  const OtpInput({
    super.key,
    required this.controller,
  });

  @override
  State<OtpInput> createState() => _OtpInputState();
}

class _OtpInputState extends State<OtpInput> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: SizedBox(
            width: 240,
            child: TextField(
              controller: widget.controller,
              keyboardType: TextInputType.number,
              maxLength: 4,
              autofocus: true,
              showCursor: false,
              decoration: const InputDecoration(
                counterText: '',
                border: InputBorder.none,
              ),
              style: const TextStyle(
                color: Colors.transparent,
                fontSize: 0,
              ),
              onChanged: (_) => setState(() {}),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(4, (index) {
            final hasValue =
                widget.controller.text.length > index;

            return Container(
              margin: const EdgeInsets.symmetric(horizontal: 8),
              width: 48,
              height: 48,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: hasValue
                      ? Colors.black
                      : Colors.grey.shade300,
                ),
              ),
              alignment: Alignment.center,
              child: Text(
                hasValue
                    ? widget.controller.text[index]
                    : '',
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            );
          }),
        ),
      ],
    );
  }
}
