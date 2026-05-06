class ProductModel {
  final String image;
  final String name;
  final double price;
  final double? oldPrice;
  final double rating;
  final int reviews;
  bool isFavorite;

  ProductModel({
    required this.image,
    required this.name,
    required this.price,
    this.oldPrice,
    required this.rating,
    required this.reviews,
    this.isFavorite = false, required String title,
  });
}