class CartItemModel {
  final String title;
  final String image;
  final double price;
  final String size;
  final String color;
  int quantity;
  bool isSelected;

  CartItemModel({
    required this.title,
    required this.image,
    required this.price,
    required this.size,
    required this.color,
    this.quantity = 1,
    this.isSelected = true,
  });
}
