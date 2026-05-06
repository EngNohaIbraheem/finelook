import 'package:flutter/material.dart';
import '../models/card_model.dart';
import '../widgets/credit_card_widgets.dart';
import '../widgets/custum_text_field.dart';

class AddNewCardScreen extends StatelessWidget {
  const AddNewCardScreen({super.key});

  static const String routeName = "AddNewCardScreen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Add new card")),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              CreditCardWidget(
                card: CardModel(
                  cardNumber: "**** **** **** ****",
                  holderName: "NAME",
                  expiryDate: "MM/YY",
                ),
                gradient: const LinearGradient(
                  colors: [Colors.orange, Colors.amber],
                ),
              ),

              const SizedBox(height: 24),

              const CustomTextFieldPayment(
                label: "Cardholder Name",
                hint: "Sunie Pham",
              ),
              const SizedBox(height: 16),

              const CustomTextFieldPayment(
                label: "Card Number",
                hint: "5412363272837284",
              ),
              const SizedBox(height: 16),

              Row(
                children: const [
                  Expanded(
                    child: CustomTextFieldPayment(
                      label: "Expires",
                      hint: "03/23",
                    ),
                  ),
                  SizedBox(width: 16),
                  Expanded(
                    child: CustomTextFieldPayment(
                      label: "CVV",
                      hint: "999",
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 32),

              SizedBox(
                width: double.infinity,
                height: 56,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(28),
                    ),
                  ),
                  child: const Text("Add card"),
                ),
              ),

              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}
