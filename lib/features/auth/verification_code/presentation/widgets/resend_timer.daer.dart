import 'dart:async';
import 'package:flutter/material.dart';

class ResendTimer extends StatefulWidget {
  final int seconds;
  final VoidCallback onResend;
  final ValueChanged<int> onTick;

  const ResendTimer({
    super.key,
    required this.seconds,
    required this.onResend,
    required this.onTick,
  });

  @override
  State<ResendTimer> createState() => _ResendTimerState();
}

class _ResendTimerState extends State<ResendTimer> {
  Timer? timer;
  late int remaining;

  @override
  void initState() {
    super.initState();
    remaining = widget.seconds;
    start();
  }

  void start() {
    timer?.cancel();
    timer = Timer.periodic(const Duration(seconds: 1), (t) {
      if (remaining == 0) {
        t.cancel();
      } else {
        setState(() {
          remaining--;
          widget.onTick(remaining);
        });
      }
    });
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: remaining > 0
          ? Text(
        'Resend in 00:${remaining.toString().padLeft(2, '0')}',
        style: const TextStyle(color: Colors.black),
      )
          : TextButton(
        onPressed: () {
          remaining = 10;
          widget.onResend();
          start();
        },
        child: const Text('Resend code'),
      ),
    );
  }
}
