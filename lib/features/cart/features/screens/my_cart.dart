// import 'package:flutter/material.dart';
// import '../../../check_out/screens/check_out_payment.dart';
// import '../../../check_out/screens/check_out_shipping_screen.dart';
// import '../widgets/cart_item_card.dart';
// import '../widgets/cart_summary.dart';
//
// class Carttscreen extends StatelessWidget {
//   const Carttscreen({super.key});
//
//   static const String routeName = "Carttscreen";
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//
//       appBar: AppBar(
//         centerTitle: true,
//         title: const Text(
//           'Your Cart',
//           style: TextStyle(fontWeight: FontWeight.w600),
//         ),
//         leading: IconButton(
//           icon: const Icon(Icons.arrow_back_ios_new),
//           onPressed: () => Navigator.pop(context),
//         ),
//       ),
//
//       // ✅ المحتوى فقط
//       body: ListView(
//         padding: const EdgeInsets.all(16),
//         children: const [
//           CartItemCard(
//             image: 'assets/images/cart3.png',
//             title: 'Sportwear Set',
//             price: 80,
//             size: 'L',
//             color: 'Cream',
//           ),
//           SizedBox(height: 16),
//           CartItemCard(
//             image: 'assets/images/cartoo.png',
//             title: 'Turtleneck Sweater',
//             price: 39.99,
//             size: 'M',
//             color: 'White',
//           ),
//           SizedBox(height: 16),
//           CartItemCard(
//             image: 'assets/images/cartt.png',
//             title: 'Cotton T-shirt',
//             price: 31,
//             size: 'L',
//             color: 'Black',
//           ),
//           SizedBox(height: 121), // مساحة للـ bottom bar
//         ],
//       ),
//
//       // ✅ المكان الصحيح
//       bottomNavigationBar: const CheckoutShippingScreen(),
//     );
//   }
// }
