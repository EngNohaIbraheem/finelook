import 'package:flutter/material.dart';

class PaymentIconsRow extends StatelessWidget {
  const PaymentIconsRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: const [
        Icon(Icons.account_balance_wallet),
        Icon(Icons.credit_card),
        Icon(Icons.payment),
        Icon(Icons.account_balance),
      ],
    );
  }
}
