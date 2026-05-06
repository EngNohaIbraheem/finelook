import 'package:flutter/material.dart';
import 'Rice_row.dart';
import 'card_container.dart';

class OrderItemsCard extends StatelessWidget {
  const OrderItemsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return const CardContainer(
      child: Column(
        children: [
          PriceRow(title: 'Sportwear Set', quantity: 'x1', price: '\$80.00'),
          PriceRow(title: 'Cotton T-shirt', quantity: 'x1', price: '\$30.00'),
          Divider(),
          PriceRow(title: 'Sub Total', price: '110.00'),
          PriceRow(title: 'Shipping', price: '0.00'),
          Divider(),
          PriceRow(
            title: 'Total',
            price: '\$110.00',
            isBold: true,
          ),
        ],
      ),
    );
  }
}
