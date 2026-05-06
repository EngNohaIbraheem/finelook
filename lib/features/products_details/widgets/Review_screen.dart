import 'package:flutter/material.dart';

import '../models/review_model.dart';
import 'Review_item.dart';

class ReviewsScreen extends StatelessWidget {
  const ReviewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final reviews = [
      ReviewModel(
        name: "Jennifer Rose",
        image: "assets/images/user1.png",
        rating: 5,
        timeAgo: "5m ago",
        review:
        "I love it. Awesome customer service!! Helped me out with adding an additional item to my order. Thanks again!",
      ),
      ReviewModel(
        name: "Kelly Rihana",
        image: "assets/images/user2.png",
        rating: 5,
        timeAgo: "9m ago",
        review:
        "I'm very happy with order, It was delivered on and good quality. Recommended!",
      ),
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Reviews"),
        centerTitle: true,
        elevation: 0,
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(20),
        itemCount: reviews.length,
        separatorBuilder: (_, __) => const Divider(height: 1),
        itemBuilder: (context, index) {
          return ReviewItem(review: reviews[index], title: null,);
        },
      ),
    );
  }
}
