import 'package:flutter/material.dart';
import '../../payment/widgets/payment_method_item.dart';
import '../widgets/payment_steps_indector.dart';
import '../widgets/credit_card_item.dart';
import '../widgets/checkout_summary.dart';
import '../widgets/place_oder_button.dart';
import '../widgets/place_order_button.dart';

class CheckoutPaymentScreen extends StatelessWidget {
  const CheckoutPaymentScreen({super.key});
  static const  String routeName ="CheckoutPaymentScreen" ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: const BackButton(color: Colors.black),
        centerTitle: true,
        title: const Text(
          'Check out',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: const SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            PaymentStepsIndicator(),
            SizedBox(height: 20),
            Text(
              'STEP 2',
              style: TextStyle(fontSize: 12, color: Colors.grey),
            ),
            SizedBox(height: 4),
            Text(
              'Payment',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),

            /// Payment methods
            Row(
              children: [
                PaymentMethodItem(
                  // label: 'Cash',
                  // isSelected: false,


                  image: 'assets/images/Cash.png',
                ),
                SizedBox(width: 12),
                PaymentMethodItem(
                  // label: 'Credit Card',
                  // isSelected: true,
                  image: 'assets/images/Creditcard.png',
                ),
                SizedBox(width: 12),
                PaymentMethodItem(
                  // label: '',
                  // isSelected: false,
                  image: 'assets/images/Cash.png',

                ),
              ],
            ),

            SizedBox(height: 24),
            CreditCardItem(),
            SizedBox(height: 24),
            Text("or check out with"),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                PaymentMethodItem(image: "assets/images/PayPal.png"),
                PaymentMethodItem(image: "assets/images/MethodVisa.png"),
                PaymentMethodItem(image: "assets/images/Mastercard.png"),
                PaymentMethodItem(image: "assets/images/Alipay.png"),
                PaymentMethodItem(image: "assets/images/Amex.png"),
              ],
            ),
            SizedBox(height: 24),
            CheckoutSummary(),
            SizedBox(height: 16),
            AgreeTermsRow(),
            SizedBox(height: 24),
            PlaceOrderButton(),
          ],
        ),
      ),
    );
  }
}
