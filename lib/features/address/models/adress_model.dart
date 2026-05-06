class AddressModel {
  final String title;
  final String address;
  bool isSelected;

  AddressModel({
    required this.title,
    required this.address,
    this.isSelected = false,
  });
}
