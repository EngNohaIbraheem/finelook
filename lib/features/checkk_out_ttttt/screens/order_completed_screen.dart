import 'package:flutter/material.dart';
import '../../../core/widgets/primary_button.dart';
import '../../../core/widgets/stipper_indector.dart';
import '../../orders/screens/my_orders_screen.dart';

class OrderCompletedScreen extends StatelessWidget {
  const OrderCompletedScreen({super.key});
  static const  String routeName ="OrderCompletedScreen" ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Check out')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const StepperIndicator(currentStep: 2),
            const SizedBox(height: 40),
            const Icon(Icons.check_circle, size: 90),
            const SizedBox(height: 20),
            const Text(
              'Order Completed',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
            const Text(
              'Thank you for your purchase.\nYou can view your order in My Orders.',
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 40),
            PrimaryButton(
              title: 'Continue shopping',
              onPressed: () {

                Navigator.pushNamed(context, MyOrdersScreen.routeName);

              },
            ),
          ],
        ),
      ),
    );
  }
}
