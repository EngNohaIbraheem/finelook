import 'package:flutter/material.dart';
import '../../home/presentation/widgets/notification_card.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});
  static const String routeName = "NotificationScreen";

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
          'Notification',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            NotificationCard(
              title: 'Good morning! Get 20% Voucher',
              description:
              'Summer sale up to 20% off. Limited voucher.\nGet now!! 😋',
            ),
            SizedBox(height: 16),
            NotificationCard(
              title: 'Special offer just for you',
              description: 'New Autumn Collection 30% off',
            ),
            SizedBox(height: 16),
            NotificationCard(
              title: 'Holiday sale 50%',
              description: 'Tap here to get 50% voucher.',
            ),
          ],
        ),
      ),
    );
  }
}
