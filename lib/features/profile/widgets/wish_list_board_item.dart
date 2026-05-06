import 'package:flutter/material.dart';
import '../models/wish_list_board_model.daer.dart';
import 'package:flutter/material.dart';
import '../models/wish_board_model.dart';
class WishlistBoardCard extends StatelessWidget {
  final WishBoardModel board;
  final VoidCallback onTap;

  const WishlistBoardCard({
    super.key,
    required this.board,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    const spacing = 4.0;

    return InkWell(
      onTap: onTap,
      child: Column(
        children: [
          /// ================= IMAGES =================
          ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: SizedBox(
              height: 160,
              child: Row(
                children: [

                  /// LEFT SIDE (2 BIG IMAGES)
                  Expanded(
                    flex: 2,
                    child: Row(
                      children: [
                        Expanded(
                          child: Image.asset(
                            board.images[0],
                            fit: BoxFit.cover,
                            height: double.infinity,
                            width:double.infinity,

                          ),
                        ),
                        const SizedBox(height: spacing),
                        Expanded(
                          child: Image.asset(
                            board.images[1],
                            fit: BoxFit.cover,
                            height: double.infinity,
                            width:double.infinity,

                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: spacing),

                  /// RIGHT SIDE (4 SMALL IMAGES)
                  Expanded(
                    flex: 2,
                    child: Column(
                      children: [
                        Expanded(
                          child: Row(
                            children: [
                              Expanded(
                                child: Image.asset(
                                  board.images[2],
                                  fit: BoxFit.cover,
                                ),
                              ),
                              const SizedBox(width: spacing),
                              Expanded(
                                child: Image.asset(
                                  board.images[3],
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: spacing),
                        Expanded(
                          child: Row(
                            children: [
                              Expanded(
                                child: Image.asset(
                                  board.images[4],
                                  fit: BoxFit.cover,
                                ),
                              ),
                              const SizedBox(width: spacing),
                              Expanded(
                                child: Image.asset(
                                  board.images[5],
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),

          const SizedBox(height: 12),

          /// ================= TEXT =================
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      board.title,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      "${board.itemsCount} items",
                      style: const TextStyle(
                        color: Colors.grey,
                        fontSize: 13,
                      ),
                    ),
                  ],
                ),
              ),
              const Icon(Icons.arrow_forward_ios_rounded, size: 16)
            ],
          ),

          const SizedBox(height: 16),
          const Divider(thickness: 1, height: 0),
        ],
      ),
    );
  }
}