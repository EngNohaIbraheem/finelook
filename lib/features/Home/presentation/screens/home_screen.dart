import 'package:flutter/material.dart';
import 'package:newfashionstore/features/home/presentation/screens/slide_bar_drawer.dart';
import '../widgets/Recommended_list.dart';
import '../widgets/TopCollectionSection.dart';
import '../widgets/app_home_bar.dart';
import '../widgets/categorySection.dart';
import '../widgets/featureProducts.dart';
import '../widgets/home_drawer.dart';
import '../widgets/banner_section.dart';
import '../widgets/new_collection_banner.dart';
import '../widgets/sectionHeader.dart';
import '../widgets/summer_collection.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static const String routeName = "HomeScreen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const SidebarDrawer(),
      appBar: const HomeAppBar(),
      backgroundColor: Colors.white,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        children: const [
          SizedBox(height: 16),
          CategorySection(),
          SizedBox(height: 20),
          BannerSection(),
          SizedBox(height: 24),
          SectionHeader(title: 'Feature Products'),
          FeaturedProducts(),
          SizedBox(height: 40),
          NewCollectionBanner(),
          SectionHeader(title: 'Recommended'),
          RecommendedList(),
          SizedBox(height: 40),
          TopCollectionBannerslim(),
          SizedBox(height: 30),
          SummerCollectionBanner(),
        ],
      ),
    );
  }
}