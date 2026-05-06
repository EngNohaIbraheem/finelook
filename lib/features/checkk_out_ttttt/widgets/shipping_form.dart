import 'package:flutter/material.dart';

class ShippingForm extends StatelessWidget {
  const ShippingForm({super.key});

  Widget _field(String label, {bool required = false}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 14),
      child: TextField(
        decoration: InputDecoration(
          labelText: required ? '$label *' : label,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        _field('First name', required: true),
        _field('Last name', required: true),
        _field('Country', required: true),
        _field('Street name', required: true),
        _field('City', required: true),
        _field('State / Province'),
        _field('Zip-code', required: true),
        _field('Phone number', required: true),
      ],
    );
  }
}
