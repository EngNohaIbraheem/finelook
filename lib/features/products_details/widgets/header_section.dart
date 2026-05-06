import 'package:flutter/cupertino.dart';
import 'package:newfashionstore/features/products_details/widgets/rating_summary.dart';
import 'package:newfashionstore/features/products_details/widgets/title_price_row.dart';

import '../../products/widgets/product_descrption_section.dart';
import '../models/review_model.dart';
import 'Rating_row.dart';
import 'Review_item.dart';
import 'color_size_section.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TitlePriceRow(),
        const SizedBox(height: 10),
        RatingRow(title: ''),
        const SizedBox(height: 16),
      ],
    );
  }
}

class _ProductInfoSection extends StatelessWidget {
  const _ProductInfoSection();

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ColorSizeSection(),
        SizedBox(height: 16),
        ProductDescriptionSection(title: 'Description'),
        SizedBox(height: 16),
        RatingSummary(),
        SizedBox(height: 16),
      ],
    );
  }
}

class _ReviewSection extends StatelessWidget {
  const _ReviewSection();

  @override
  Widget build(BuildContext context) {
    final review = ReviewModel(
      name: 'Jennifer Rose',
      image: 'assets/images/user1.png',
      review:
      'I love it. Awesome customer service!! Helped me out with adding an additional item to my order. Thanks again!',
      timeAgo: '5m ago',
      rating: 5,
    );

    return ReviewItem(
      review: review,
      title: null,
    );
  }
}