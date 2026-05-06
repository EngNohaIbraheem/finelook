import 'package:flutter/material.dart';
import '../models/wish_listItem.dart';

class WishlistItemCard extends StatelessWidget {
  final WishlistItemModel item;
  final VoidCallback onFavoriteTap;

  const WishlistItemCard({
    super.key,
    required this.item,
    required this.onFavoriteTap,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image.asset(
                  item.image,
                  height: 220,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                top: 10,
                right: 10,
                child: GestureDetector(
                  onTap: onFavoriteTap,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Icon(
                      item.isFavorite
                          ? Icons.favorite
                          : Icons.favorite_border,
                      color: Colors.red,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Text(item.name,
              style: const TextStyle(fontWeight: FontWeight.w600)),
          const SizedBox(height: 4),
          Row(
            children: [
              Text("\$${item.price}",
                  style: const TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(width: 8),
              if (item.oldPrice != null)
                Text(
                  "\$${item.oldPrice}",
                  style: const TextStyle(
                    color: Colors.grey,
                    decoration: TextDecoration.lineThrough,
                  ),
                ),
            ],
          ),
          const SizedBox(height: 4),
          Row(
            children: [
              const Icon(Icons.star, size: 14, color: Colors.green),
              Text("${item.rating} (${item.reviews})",
                  style: const TextStyle(fontSize: 12)),
            ],
          ),
        ],
      ),
    );
  }
}
