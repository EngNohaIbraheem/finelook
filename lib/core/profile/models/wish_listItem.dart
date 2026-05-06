class WishlistItemModel {
  final String name;
  final String image;
  final double price;
  final double? oldPrice;
  final double rating;
  final int reviews;
  bool isFavorite;

  WishlistItemModel({
    required this.name,
    required this.image,
    required this.price,
    this.oldPrice,
    required this.rating,
    required this.reviews,
    this.isFavorite = true,
  });
}
