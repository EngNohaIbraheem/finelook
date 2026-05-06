import 'package:flutter/material.dart';
import '../widgets/continue_shipping_buttom.dart';
import '../widgets/orde_item_card.dart';
import '../widgets/order_status_banner.dart';
import '../widgets/order_info_card.dart';

class OrderInfoScreen extends StatelessWidget {
  const OrderInfoScreen({super.key});
  static const String routeName = "OrderInfoScreen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        centerTitle: true,
        title: const Text(
          'Order #1524',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const OrderStatusBanner(),
            const SizedBox(height: 16),
            const OrderInfoCard(),
            const SizedBox(height: 16),
            const OrderItemsCard(),
            const Spacer(),
            ContinueShoppingButton(),
          ],
        ),
      ),
    );
  }
}
