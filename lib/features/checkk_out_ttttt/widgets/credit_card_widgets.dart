import 'package:flutter/material.dart';
import '../models/card_model.dart';

import 'package:flutter/material.dart';

class CreditCardWidget extends StatelessWidget {
  const CreditCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Choose your card',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              'Add new+',
              style: TextStyle(color: Colors.red),
            ),
          ],
        ),
        const SizedBox(height: 12),
        Container(
          height: 180,
          width: double.infinity,
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            gradient: const LinearGradient(
              colors: [Color(0xFF56CCF2), Color(0xFF2F80ED)],
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Align(
                alignment: Alignment.topRight,
                child: Text(
                  'VISA',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Spacer(),
              Text(
                '4364 1345 8932 8378',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  letterSpacing: 2,
                ),
              ),
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _CardInfo(title: 'CARDHOLDER NAME', value: 'Sunie Pham'),
                  _CardInfo(title: 'VALID THRU', value: '05/24'),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}

class _CardInfo extends StatelessWidget {
  final String title;
  final String value;

  const _CardInfo({required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(color: Colors.white70, fontSize: 10),
        ),
        const SizedBox(height: 4),
        Text(
          value,
          style: const TextStyle(color: Colors.white),
        ),
      ],
    );
  }
}
