import 'package:flutter/material.dart';

import '../widgets/Review_screen.dart';
import '../widgets/bootom_add_to_cart.dart';
import '../widgets/product_details_sheet.dart';
import '../widgets/product_image_section.dart';

class ProductDetailsContentScreen extends StatelessWidget {
  const ProductDetailsContentScreen({super.key});
   static const String routeName = "ProductDetailsContentScreen";
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xffFFF7F2),
      body: Stack(
        children: [
          ProductImageSection(),
          ProductDetailsSheet(),

          BottomAddToCart(),
        ],
      ),
    );
  }
}
