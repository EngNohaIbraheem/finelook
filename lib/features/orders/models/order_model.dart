enum OrderStatus { pending, delivered, cancelled }

class OrderModel {
  final String orderId;
  final String trackingNumber;
  final int quantity;
  final double subtotal;
  final DateTime date;
  final OrderStatus status;

  OrderModel({
    required this.orderId,
    required this.trackingNumber,
    required this.quantity,
    required this.subtotal,
    required this.date,
    required this.status,
  });
}
