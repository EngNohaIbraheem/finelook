import 'package:flutter/material.dart';
import 'package:newfashionstore/features/products_details/widgets/Review_screen.dart';
import 'package:newfashionstore/features/products_details/widgets/title_price_row.dart';
import 'package:newfashionstore/features/products_details/widgets/rating_summary.dart';

import '../../products/widgets/product_descrption_section.dart';
import '../../products/widgets/product_info_section.dart';
import '../../products/widgets/similar_product_section.dart';

import '../models/review_model.dart';
import 'header_section.dart';
import 'rating_row.dart';
import 'review_item.dart';
import 'color_size_section.dart';

class ProductDetailsContent extends StatelessWidget {
  // final ScrollController scrollController;
  static const String routeName = "ProductDetailsContent";

  // const ProductDetailsContent({
  //   super.key,
  //   required this.scrollController,
  // });

  @override
  Widget build(BuildContext context) {
    return ListView(
      // controller: scrollController,
      children: const [
        HeaderSection(),
        ProductInfoSection(),
        // ReviewsScreen(),
        SimilarProductsSection(title: 'Similar Product'),
      ],
    );
  }
}