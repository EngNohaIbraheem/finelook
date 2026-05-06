import 'package:flutter/material.dart';
import '../models/wish_list_board_model.daer.dart';

class WishlistBoardItem extends StatelessWidget {
  final WishlistBoardModel board;

  const WishlistBoardItem({super.key, required this.board});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image.asset(board.images.first,
                    height: 160,
                    // fit: BoxFit.cover
                ),
              ),
            ),
            const SizedBox(width: 8),
            Column(
              children: board.images
                  .skip(1)
                  .take(4)
                  .map(
                    (img) => Padding(
                  padding: const EdgeInsets.only(bottom: 6),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset(img,
                        height: 75, width: 75, fit: BoxFit.cover),
                  ),
                ),
              )
                  .toList(),
            )
          ],
        ),
        const SizedBox(height: 12),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(board.title,
                style:
                const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            Text("${board.itemsCount} items",
                style: const TextStyle(color: Colors.grey)),
          ],
        ),
      ],
    );
  }
}
