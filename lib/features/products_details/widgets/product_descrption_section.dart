import 'package:flutter/material.dart';

class ProductDescriptionSection extends StatelessWidget {
  const ProductDescriptionSection({super.key, required String title});

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: const Text('Description'),
      // childrenPadding: const EdgeInsets.all(16),
      children: const [
        Text(
          'Sportswear is no longer under culture, it is no longer indie or cobbled together as it once was. '
              'Sport is fashion today. The top is oversized in fit and style, may need to size down.',
        ),
      ],
    );
  }
}
