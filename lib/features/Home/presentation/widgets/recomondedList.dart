import 'package:flutter/material.dart';

class RecommendedList extends StatelessWidget {
  const RecommendedList({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          ListTile(
            leading: Icon(Icons.image),
            title: Text("White fashion hoodie"),
            subtitle: Text("\$29.00"),
          ),
          ListTile(
            leading: Icon(Icons.image),
            title: Text("Cotton T-shirt"),
            subtitle: Text("\$30.00"),
          ),
        ],
      ),
    );
  }
}
