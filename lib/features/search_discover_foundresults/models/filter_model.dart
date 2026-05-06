class FilterModel {

  double minPrice;
  double maxPrice;
  int rating;
  int? colorIndex;
  String category;
  List<int> discounts;

  FilterModel({
    required this.minPrice,
    required this.maxPrice,
    required this.rating,
    this.colorIndex,
    required this.category,
    required this.discounts,
  });

}