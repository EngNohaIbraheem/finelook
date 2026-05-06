class CardModel {
  final String cardNumber;
  final String holderName;
  final String expiryDate;
  final bool isVisa;

  CardModel({
    required this.cardNumber,
    required this.holderName,
    required this.expiryDate,
    this.isVisa = false,
  });
}
