import 'package:flutter/material.dart';
import '../widgets/Board_card.dart';
import '../widgets/wish_list_appbar.dart';
import '../widgets/wish_list_tabs.dart';

class WishlistBoardsScreen extends StatelessWidget {
  const WishlistBoardsScreen({super.key});

  static const routeName = "WishlistBoardsScreen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF5F5F5),

      appBar: const WishlistAppBar(),

      body: Column(
        children: [
          const SizedBox(height: 10),
          const WishlistTabs(),
          const SizedBox(height: 20),

          Expanded(
            child: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              children: const [
                BoardCard(
                  title: "Going out outfits",
                  itemsCount: 36,
                ),
                SizedBox(height: 20),
                BoardCard(
                  title: "Office Fashion",
                  itemsCount: 20,
                ),
              ],
            ),
          ),
        ],
      ),

      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search_outlined),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag_outlined),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: "",
          ),
        ],
      ),
    );
  }
}
