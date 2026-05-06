import 'package:flutter/material.dart';

import 'found_results.dart';


class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});
  static const String routeName = "SearchScreen";

  @override
  Widget build(BuildContext context) {

    final recent = [
      "Sunglasses",
      "Sweater",
      "Hoodie"
    ];

    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: ListView(
          children: [

            TextField(
              onSubmitted: (value){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => ResultsScreen(query: value),
                  ),
                );
              },
              decoration: InputDecoration(
                hintText: "Search",
                prefixIcon: const Icon(Icons.search),
                filled: true,
                fillColor: Colors.grey.shade200,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide.none,
                ),
              ),
            ),

            const SizedBox(height: 20),

            const Text(
              "Recent Searches",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 10),

            Wrap(
              spacing: 10,
              children: recent
                  .map(
                    (e) => Chip(
                  label: Text(e),
                  deleteIcon: const Icon(Icons.close),
                  onDeleted: () {},
                ),
              )
                  .toList(),
            ),

            const SizedBox(height: 30),

            const Text(
              "Popular this week",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),

            const SizedBox(height: 20),

            Row(
              children: [
                Expanded(child: Image.asset("assets/images/img5.png")),
                const SizedBox(width: 10),
                Expanded(child: Image.asset("assets/images/img6.png")),
              ],
            )
          ],
        ),
      ),
    );
  }
}