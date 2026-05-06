import 'package:flutter/material.dart';
import '../models/adress_model.dart';

import '../widgets/adress_card.dart';

class AddressScreen extends StatefulWidget {
  const AddressScreen({super.key});
  static const  String routeName ="AddressScreen" ;

  @override
  State<AddressScreen> createState() => _DeliveryAddressScreenState();
}

class _DeliveryAddressScreenState extends State<AddressScreen> {
  final addresses = [
    AddressModel(
        title: "My Office",
        address: "SBI Building, street 3, Software Park",
        isSelected: true),
    AddressModel(
        title: "My Home",
        address: "SBI Building, street 3, Software Park"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Delivery address")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            ...addresses.map(
                  (a) => AddressCard(
                address: a,
                onTap: () {
                  setState(() {
                    for (var e in addresses) {
                      e.isSelected = false;
                    }
                    a?.isSelected = true;
                  });
                },
              ),
            ),
            const Spacer(),
            SizedBox(
              width: double.infinity,
              height: 56,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(28)),
                ),
                child: const Text("Add new address"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
