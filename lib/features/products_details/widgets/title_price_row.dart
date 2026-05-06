import 'package:flutter/cupertino.dart';

class TitlePriceRow extends StatelessWidget {
  const TitlePriceRow();

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Sportwear Set',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
        ),
        Text(
          '\$80.00',
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
