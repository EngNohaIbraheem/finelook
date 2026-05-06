import 'package:flutter/material.dart';
import '../../../core/constants/app_coclors.dart';
import '../widgets/collection_header.dart';
import '../widgets/product_grid.dart';

class CollectionScreen extends StatelessWidget {
  const CollectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.background,
      body: Column(
        children: [
          CollectionHeader(),
          Expanded(child: ProductGrid()),
        ],
      ),
    );
  }
}
