import 'package:flutter/material.dart';

import '../widgets/0rder_info.dart';
import '../widgets/rate_card.dart';
import '../widgets/track_time_line.dart';

class TrackOrderScreen extends StatelessWidget {
  const TrackOrderScreen({super.key});
  static const  String routeName ="TrackOrderScreen" ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        centerTitle: true,
        title: const Text(
          'Track Order',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            OrderInfo(),
            SizedBox(height: 30),
            Expanded(child: TrackingTimeline()),
            SizedBox(height: 20),
            RateCard(),
          ],
        ),
      ),
    );
  }
}
