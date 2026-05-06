import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newfashionstore/features/products_details/widgets/rating_summary.dart';
import 'package:newfashionstore/features/products_details/widgets/title_price_row.dart';

import '../../products/widgets/product_descrption_section.dart';
import '../../products/widgets/product_review_section.dart';
import '../../products/widgets/similar_product_section.dart';
import '../models/review_model.dart';
import 'Rating_row.dart';
import 'Review_item.dart';
import 'Review_screen.dart';
import 'color_size_section.dart';
import 'expandable_tile.dart';

class ProductDetailsSheet extends StatelessWidget {
  const ProductDetailsSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.45,
      minChildSize: 0.45,
      maxChildSize: 0.85,
      builder: (_, controller) {
        return Container(
          padding:  const EdgeInsets.all(20),
          decoration:  const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
          ),
          child: ListView(
            controller: controller,
            children:  [
              const TitlePriceRow(),
              const SizedBox(height: 10),
              const RatingRow(title: '',),

              Divider(height: 32, color: Colors.grey,),
              const ColorSizeSection(),
              // Divider(height: 32),
              const ProductDescriptionSection(title: 'Description'),
              const RatingSummary(),
            ReviewItem(
              review: ReviewModel(
                name: 'Jennifer Rose',
                image: 'assets/images/user1.png',
                review:
              "I love it. Awesome customer service!! Helped me out with adding an additional item to my order. Thanks again!",
                timeAgo: '5m ago',
                rating: 5,
              ), title: null,
            ),

              // const ReviewsScreen(),
              const SimilarProductsSection(title: 'Similar Product'),
            ],
          ),
        );
      },
    );
  }
}