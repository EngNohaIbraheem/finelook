import 'package:flutter/material.dart';
import '../../../core/widgets/primary_button.dart';
import '../../../core/widgets/stipper_indector.dart';
import 'checkout_payment .dart';
import '../widgets/shipping_form.dart';
import 'checkout_payment2_screen.dart';

class ShippingScreen extends StatelessWidget {
  const ShippingScreen({super.key});
  static const  String routeName ="ShippingScreen" ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Check out')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const StepperIndicator(currentStep: 0),
            const SizedBox(height: 24),
            const Expanded(child: ShippingForm()),
            PrimaryButton(
              title: 'Continue to payment',
              onPressed: () {
                    Navigator.pushNamed(context, CheckoutPaymentScreen.routeName);

              },
            ),
          ],
        ),
      ),
    );
  }
}
