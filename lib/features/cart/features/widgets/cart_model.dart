class CardModel {
  final String number;
  final String holder;
  final String expiry;

  const CardModel({
    required this.number,
    required this.holder,
    required this.expiry, required String cardNumber, required String holderName, required String expiryDate, required bool isVisa,
  });
}
