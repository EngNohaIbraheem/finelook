import 'package:flutter/material.dart';
import '../../checkk_out_ttttt/screens/order_completed_screen.dart';
import '../../checkk_out_ttttt/widgets/order_sammy.dart';
import '../models/card_model.dart';
import '../widgets/credit_card_widgets.dart';
import '../widgets/payment_method_item.dart';
import 'add_new_card _screen.dart';


class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});
  static const  String routeName ="PaymentScreen" ;

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  @override
  Widget build(BuildContext context) {
    final cards = [
      CardModel(
        cardNumber: "4364 1345 8932 8378",
        holderName: "Sunie Pham",
        expiryDate: "05/24",
        isVisa: true,
      ),
      CardModel(
        cardNumber: "5412 3632 7283 7284",
        holderName: "Sunie Pham",
        expiryDate: "03/23",
      ),
    ];

    return Scaffold(
      appBar: AppBar(title: const Text("Payment")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("Card Management",
                      style:
                      TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => const AddNewCardScreen(),
                        ),
                      );
                    },
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, AddNewCardScreen.routeName);
                      },
                      child: const Text("Add new+",
                          style: TextStyle(color: Colors.red)),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              SizedBox(
                height: 200,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: cards.length,
                  separatorBuilder: (_, __) => const SizedBox(width: 16),
                  itemBuilder: (context, index) {
                    return CreditCardWidget(
                      card: cards[index],
                      gradient: LinearGradient(
                        colors: index == 0
                            ? [Colors.blue, Colors.cyan]
                            : [Colors.orange, Colors.deepOrange],
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(height: 24),
              const Text("or check out with"),
              const SizedBox(height: 16),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  PaymentMethodItem(image: "assets/images/PayPal.png"),
                  PaymentMethodItem(image: "assets/images/MethodVisa.png"),
                  PaymentMethodItem(image: "assets/images/Mastercard.png"),
                  PaymentMethodItem(image: "assets/images/Alipay.png"),
                  PaymentMethodItem(image: "assets/images/Amex.png"),
                ],
              ),
              const SizedBox(height: 24),

              /// ORDER SUMMARY
              const OrderSummary(),

              const SizedBox(height: 16),

              /// TERMS
              Row(
                children: [
                  // Checkbox(
                  //   value: agreeTerms,
                  //   onChanged: (value) {
                  //     setState(() {
                  //       agreeTerms = value!;
                  //     });
                  //   },
                  // ),

                  const Expanded(
                    child: Text.rich(
                      TextSpan(
                        text: 'I agree to ',
                        children: [
                          TextSpan(
                            text: 'Terms and conditions',
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 24),

              /// PLACE ORDER BUTTON
              SizedBox(
                width: double.infinity, // 👈 takes all screen width

                height: 52,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,

                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(26),
                    ),
                  ),
                  onPressed:  () {

                    Navigator.pushNamed(context, OrderCompletedScreen.routeName);

                  } ,
                  child: const Text('Place my order'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
