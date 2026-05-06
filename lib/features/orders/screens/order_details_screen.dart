import 'package:flutter/material.dart';

import '../widgets/order_info_card.dart';
import '../widgets/order_price_summary.dart';
import '../widgets/order_status_banner.dart';
import 'Rate_product_screen.dart';

class OrderDetailsScreen extends StatelessWidget {
  const OrderDetailsScreen({super.key});
  static const  String routeName ="OrderDetailsScreen" ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: const BackButton(color: Colors.black),
        title: const Text('Order #1514', style: TextStyle(color: Colors.black)),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const OrderStatusBanner(),
          const SizedBox(height: 16),
          const OrderInfoCard(),
          const SizedBox(height: 16),
          const OrderPriceSummary(),
          const SizedBox(height: 24),
          Row(
            children: [
              Expanded(
                child: OutlinedButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text('Return home'),
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
                  onPressed: () {
                    Navigator.pushNamed(
                        context,
                        RateProductScreen  .routeName );                 },
                  child: const Text('Rate'),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
