import 'package:flutter/material.dart';
import '../models/voucher_model.dart';
import '../widgets/vocher_card.dart';


class VoucherScreen extends StatelessWidget {
  const VoucherScreen({super.key});
  static const  String routeName ="VoucherScreen" ;

  @override
  Widget build(BuildContext context) {
    final vouchers = [
      VoucherModel(
        discount: 50,
        title: "Black Friday",
        description: "Sale off 50%",
        code: "fridaysale",
        expiry: "20 Dec",
      ),
      VoucherModel(
        discount: 30,
        title: "Holiday Sale",
        description: "Sale off 30%",
        code: "holiday30",
        expiry: "22 Dec",
      ),
      VoucherModel(
        discount: 20,
        title: "First order",
        description: "20% off your first order",
        code: "welcome",
        expiry: "28 Dec",
      ),
    ];

    return Scaffold(
      appBar: AppBar(title: const Text("Voucher")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: vouchers.map((v) => VoucherCard(voucher: v)).toList(),
        ),
      ),
    );
  }
}
