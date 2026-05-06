import 'package:flutter/material.dart';

import '../../cart/features/screens/my_cart.dart';
import '../../cart/features/screens/mysreen_cart.dart';
import '../../products_details/widgets/Rating_row.dart';
import '../widgets/Rating_summery.dart.dart';
import '../widgets/add_to_cart_buttom.dart';
import '../widgets/product_app_bar.dart';
import '../widgets/product_descrption_section.dart';
import '../widgets/product_image_slider.dart';
import '../widgets/product_info_section.dart';
import '../widgets/product_option_section.dart';
import '../widgets/product_review_section.dart';
import '../widgets/similar_product_section.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key});

  static const String routeName = 'ProductDetailsScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFBF7F4),
      appBar: const ProductAppBar(),
      body: const SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(bottom: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ProductImageSlider(),
                ProductInfoSection(),
                ProductOptionsSection(),
                ProductDescriptionSection(title: '',),
                RatingRow(title: '',),

                // RatingSummaryWidget(
                 // rating: 4.9,
                 //   totalRatings: 83,
                 // ),
                // ProductReviewsSection(),
                SimilarProductsSection(title: '',),
                SizedBox(height: 100),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: AddToCartButton(
        onPressed: () {

          Navigator.pushNamed(context, MyNewCartScreen.routeName);

        },
      ),
    );
  }
}
