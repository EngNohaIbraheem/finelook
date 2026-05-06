import 'package:flutter/material.dart';
import '../../models/product_model.dart';
import '../widgets/product_card.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({super.key, required String query});
  static const String routeName = "ResultsScreen";

  @override
  Widget build(BuildContext context) {

    final products = [

      ProductModel(
        image: "assets/images/dress9.png",
        title: "Linen Dress",
        price: 52,
        oldPrice: 90,
        rating: 4.5,
        reviews: 64, name: '',
      ),

      ProductModel(
        image: "assets/images/dress10.png",
        title: "Filted Waist Dress",
        price: 47.99,
        oldPrice: 82,
        rating: 4.5,
        reviews: 53, name: '',
      ),

      ProductModel(
        image: "assets/images/dress11.png",
        title: "Maxi Dress",
        price: 68,
        rating: 4.5,
        reviews: 46, name: '',
      ),

      ProductModel(
        image: "assets/images/dress12.png",
        title: "Front Tie Mini Dress",
        price: 59,
        rating: 4.5,
        reviews: 38, name: '',
      ),

      ProductModel(
        image: "assets/images/dress12.png",
        title: "Ohara Dress",
        price: 85,
        rating: 4.5,
        reviews: 50, name: '',
      ),

      ProductModel(
        image: "assets/images/dress10.png",
        title: "Tie Back Mini Dress",
        price: 67,
        rating: 4.5,
        reviews: 39, name: '',
      ),

    ];

    return Scaffold(

      appBar: AppBar(
        leading: const BackButton(),
        title: const Text("Dresses"),
        centerTitle: true,
        elevation: 0,
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            /// Found + Filter
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                const Text(
                  "Found\n152 Results",
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                ),

                Container(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.grey.shade300),
                  ),
                  child: const Row(
                    children: [
                      Text("Filter"),
                      Icon(Icons.keyboard_arrow_down)
                    ],
                  ),
                )
              ],
            ),

            const SizedBox(height: 20),

            /// Products Grid
            Expanded(
              child: GridView.builder(

                itemCount: products.length,

                gridDelegate:
                const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 16,
                  childAspectRatio: 0.60,
                ),

                itemBuilder: (context, index) {
                  return ProductCard(
                    product: products[index],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}