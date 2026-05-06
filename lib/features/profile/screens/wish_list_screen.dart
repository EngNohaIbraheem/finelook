// import 'package:flutter/material.dart';
// import '../models/wish_listItem.dart';
// import '../widgets/wish_list_item_card.dart';
//
//
// class WishlistScreen extends StatelessWidget {
//   const WishlistScreen({super.key});
//
//   static const List<WishlistItem> _items = [
//     WishlistItem(
//       image: 'assets/images/dress10.png',
//       title: 'Front Tie Mini Dress',
//       price: 59,
//       rating: 4.5,
//       reviews: 38,
//     ),
//     WishlistItem(
//       image: 'assets/images/dress9.png',
//       title: 'Linen Dress',
//       price: 52,
//       oldPrice: 90,
//       rating: 5,
//       reviews: 64,
//     ),
//     WishlistItem(
//       image: 'assets/images/dress12.png',
//       title: 'Linen Dress',
//       price: 52,
//       oldPrice: 90,
//       rating: 5,
//       reviews: 64,
//     ),
//     WishlistItem(
//       image: 'assets/images/dress11.png',
//       title: 'Linen Dress',
//       price: 52,
//       oldPrice: 90,
//       rating: 5,
//       reviews: 64,
//     ),
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Padding(
//
//         padding: const EdgeInsets.all(16),
//         child: Column(
//           children: [
//             Expanded(
//               child: GridView.builder(
//                 itemCount: _items.length,
//                 gridDelegate:
//                 const SliverGridDelegateWithFixedCrossAxisCount(
//                   crossAxisCount: 2,
//                   mainAxisSpacing: 16,
//                   crossAxisSpacing: 16,
//                   childAspectRatio: 0.62,
//                 ),
//                 itemBuilder: (context, index) {
//                   return WishlistItemCard(
//                     item: _items[index], // ✅ NO ERROR
//                   );
//                 },
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';

import '../../../core/profile/models/wish_list_board_model.daer.dart';
import '../../../core/profile/widgets/wish_list_board_item.dart';
import '../../home/presentation/screens/notification_screen.dart';
import '../models/wish_board_model.dart';
import '../models/wish_listItem.dart';
import '../models/wish_list_board_model.daer.dart';
import '../widgets/wish_list_board_item.dart';
import '../widgets/wish_list_item_card.dart';
import '../widgets/wish_list_tab_bar.dart';

class WishlistScreen extends StatefulWidget {
  const WishlistScreen({super.key});
  static const  String routeName ="WishlistScreen" ;

  @override
  State<WishlistScreen> createState() => _WishlistScreenState();
}

class _WishlistScreenState extends State<WishlistScreen> {
  int selectedTab = 0;

  final items = [
    WishlistItemModel(
      name: "Front Tie Mini Dress",
      image: "assets/images/dress9.png",
      price: 59,
      rating: 4.8,
      reviews: 38,
    ),
    WishlistItemModel(
      name: "Linen Dress",
      image: "assets/images/dress10.png",
      price: 52,
      oldPrice: 70,
      rating: 4.9,
      reviews: 64,
    ),
    WishlistItemModel(
      name: "Linen Dress",
      image: "assets/images/dress11.png",
      price: 52,
      oldPrice: 70,
      rating: 4.9,
      reviews: 64,
    ),
    WishlistItemModel(
      name: "Linen Dress",
      image: "assets/images/dress12.png",
      price: 52,
      oldPrice: 70,
      rating: 4.9,
      reviews: 64,
    ),
  ];
  List<WishBoardModel> boards = [
    WishBoardModel(
      title: "Going out outfits",
      itemsCount: 36,
      images: [
        "assets/images/plouse1.png",
        "assets/images/plouse2.png",
        "assets/images/plouse3.png",
        "assets/images/plouse4.png",
        "assets/images/plouse5.png",
        "assets/images/plouse6.png",
      ],
    ),
    WishBoardModel(
      title: "Office Fashion",
      itemsCount: 20,
      images: [
        "assets/images/plouse1.png",
        "assets/images/plouse2.png",
        "assets/images/plouse3.png",
        "assets/images/plouse4.png",
        "assets/images/plouse5.png",
        "assets/images/plouse6.png",
      ],
    ),
  ];
  final boardsList  = [
    WishlistBoardModel(
      title: "Going out outfits",
      itemsCount: 36,
      images: [
        "assets/images/plouse1.png",
        "assets/images/plouse2.png",
        "assets/images/plouse3.png",
        "assets/images/plouse4.png",
        "assets/images/plouse5.png",
        "assets/images/plouse6.png",

      ],
    ),
    WishlistBoardModel(
      title: "Office Fashion",
      itemsCount: 20,
      images: [
        "assets/images/plouse1.png",
        "assets/images/plouse2.png",
        "assets/images/plouse3.png",
        "assets/images/plouse4.png",
        "assets/images/plouse5.png",
        "assets/images/plouse6.png",
      ],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Wishlist"),
        leading: Builder(
          builder: (context) => IconButton(
            icon: const Icon(Icons.menu, color: Colors.black),
            onPressed: () => Scaffold.of(context).openDrawer(),
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications_none, color: Colors.black),
            onPressed: () {
              Navigator.pushNamed(context, NotificationScreen.routeName);

            },
          ),

        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [

            /// ================= TAB BAR =================
            WishlistTabBar(
              selectedIndex: selectedTab,
              onTap: (index) {
                setState(() {
                  selectedTab = index;
                });
              },
            ),

            const SizedBox(height: 16),

            /// ================= CONTENT =================
            Expanded(
              child: SingleChildScrollView(
                child: selectedTab == 0

                /// =============== ALL ITEMS TAB ===============
                    ? GridView.builder(
                  shrinkWrap: true,
                  physics:
                  const NeverScrollableScrollPhysics(),
                  itemCount: items.length,
                  gridDelegate:
                  const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 16,
                    crossAxisSpacing: 16,
                    childAspectRatio: 0.62,
                  ),
                  itemBuilder: (context, index) {
                    return WishlistItemCard(
                      item: items[index],
                      onFavoriteTap: () {
                        setState(() {
                          items[index].isFavorite =
                          !items[index].isFavorite;
                        });
                      },
                    );
                  },
                )

                /// =============== BOARDS TAB ===============
                    :
                ListView.separated(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: boardsList.length,
                  separatorBuilder: (_, __) =>
                  const SizedBox(height: 24),
                  itemBuilder: (context, index) {
                    return
                      WishlistBoardCard(
                        board: boards[index],
                        onTap: () {},
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),    );
  }
}
