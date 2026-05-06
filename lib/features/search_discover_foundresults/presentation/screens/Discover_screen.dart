
import 'package:flutter/material.dart';
import 'package:newfashionstore/features/search_discover_foundresults/presentation/screens/search_screen.dart';

import '../../../../core/profile/widgets/Bottom_Nav_BAR.DART.dart';
import '../../../home/presentation/screens/slide_bar_drawer.dart';
import '../../../home/presentation/widgets/discoverAppbar.dart';
import '../../../home/presentation/widgets/discoverCard.dart';
import '../../../home/presentation/widgets/searchbar.dart';
import '../../models/filter_model.dart';
import '../widgets/filter_bottom_sheet.dart';
import 'found_results.dart';



class DiscoverScreen extends StatefulWidget {

  const DiscoverScreen({super.key});
  static const String routeName = "DiscoverScreen";

  @override
  State<DiscoverScreen> createState() => _DiscoverScreenState();
}

class _DiscoverScreenState extends State<DiscoverScreen> {

  FilterModel? currentFilter;

  void openFilter() {

    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (_) => FilterBottomSheet(
        onApply: (filter){

          setState(() {
            currentFilter = filter;
          });

        },
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
   drawer: const SidebarDrawer(),
      // appBar: const HomeAppBar(),
      //  bottomNavigationBar: const BottomNavBar(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              const DiscoverAppBar(),
              const SizedBox(height: 16),
              SearchBarWidget(onSearch: (String ) {
                Navigator.pushNamed(context, ResultsScreen.routeName);

              }, controller:TextEditingController() , onChanged: (String query) {
                Navigator.pushNamed(context, SearchScreen.routeName);


              }, onFilterTap: () {  },
                //onFilterTaperTapterTap: openFilter,

                // onFilterTaperTap: () {  },
              ),
              const SizedBox(height: 24),

              Expanded(
                child: ListView(
                  children: const [CategoryCard(
                    color: Color(0xFFB1B6A3),
                    images: [
                      'assets/images/Ellipse 233.png',
                      'assets/images/Ellipse 234 .png',
                    ],
                  ),

                    CategoryCard(
                      color: Color(0xFF8E8683),
                      images: [

                        'assets/images/Mask Group bages.png',
                      ],
                    ),
                    CategoryCard(
                      color: Color(0xFF455A64),
                       images: [
                         'assets/images/Ellipse 235.png',

                         'assets/images/shoes.png',
                       ],
                    ),
                    CategoryCard(
                      color: Color(0xFFC8BCC1),
                      images: [
                        'assets/images/Ellipse 233.png',

                        'assets/images/image 58.png',
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
