class VoucherModel {
  final int discount;
  final String title;
  final String description;
  final String code;
  final String expiry;

  VoucherModel({
    required this.discount,
    required this.title,
    required this.description,
    required this.code,
    required this.expiry,
  });
}
