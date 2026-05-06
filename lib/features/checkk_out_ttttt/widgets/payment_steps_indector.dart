import 'package:flutter/material.dart';

class PaymentStepsIndicator extends StatelessWidget {
  const PaymentStepsIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _stepIcon(Icons.location_on, true),
        _divider(),
        _stepIcon(Icons.credit_card, true),
        _divider(),
        _stepIcon(Icons.check_circle, false),
      ],
    );
  }

  Widget _stepIcon(IconData icon, bool active) {
    return Icon(
      icon,
      color: active ? Colors.black : Colors.grey.shade300,
    );
  }

  Widget _divider() {
    return Expanded(
      child: Divider(
        thickness: 1,
        color: Colors.grey.shade300,
      ),
    );
  }
}
