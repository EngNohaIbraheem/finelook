import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ExpandableTile extends StatelessWidget {
  final String title;

  const ExpandableTile({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      title: Text(
        title,
        style: const TextStyle(fontWeight: FontWeight.w600),
      ),
      trailing: const Icon(Icons.arrow_forward_ios, size: 16),
      onTap: () {},
    );
  }
}
