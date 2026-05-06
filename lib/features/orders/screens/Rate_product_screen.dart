import 'package:flutter/material.dart';
import '../widgets/Rating_stars.dart';
import '../widgets/review_text_field.dart';
import '../widgets/reward_banner.dart';
import '../widgets/submit_button.dart';
import '../widgets/upload_button.dart';

class RateProductScreen extends StatelessWidget {
  const RateProductScreen({super.key});
  static const  String routeName ="RateProductScreen" ;

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
          'Rate Product',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            RewardBanner(),
            const SizedBox(height: 24),
            const RatingStars(),
            const SizedBox(height: 24),
            const ReviewTextField(),
            const SizedBox(height: 16),
            const UploadButtons(),
            const Spacer(),
            SubmitButton(),
          ],
        ),
      ),
    );
  }
}
