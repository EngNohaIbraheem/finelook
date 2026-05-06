
// import 'package:flutter/material.dart';
//
// class CheckoutPaymentScreen extends StatelessWidget {
//   const CheckoutPaymentScreen({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         elevation: 0,
//         backgroundColor: Colors.white,
//         leading: const Icon(Icons.arrow_back_ios, color: Colors.black),
//         centerTitle: true,
//         title: const Text(
//           'Check out',
//           style: TextStyle(color: Colors.black),
//         ),
//       ),
//       body: SingleChildScrollView(
//         padding: const EdgeInsets.all(16),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             _stepIndicator(),
//             const SizedBox(height: 24),
//
//             const Text(
//               'Payment',
//               style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
//             ),
//
//             const SizedBox(height: 16),
//             _paymentMethods(),
//
//             const SizedBox(height: 24),
//             _chooseCardHeader(),
//             const SizedBox(height: 16),
//
//             _creditCard(),
//             const SizedBox(height: 24),
//
//             _checkoutWith(),
//             const SizedBox(height: 24),
//
//             _summaryBox(),
//             const SizedBox(height: 16),
//
//             _terms(),
//             const SizedBox(height: 24),
//
//             _placeOrderButton(),
//           ],
//         ),
//       ),
//     );
//   }
//
//   // ------------------------------------------------------
//
//   Widget _stepIndicator() {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: const [
//         Icon(Icons.location_on_outlined),
//         SizedBox(width: 8),
//         Expanded(child: Divider()),
//         Icon(Icons.credit_card),
//         SizedBox(width: 8),
//         Expanded(child: Divider()),
//         Icon(Icons.check_circle_outline),
//       ],
//     );
//   }
//
//   Widget _paymentMethods() {
//     return Row(
//       children: [
//         _methodItem(Icons.attach_money, 'Cash', false),
//         const SizedBox(width: 12),
//         _methodItem(Icons.credit_card, 'Credit Card', true),
//         const SizedBox(width: 12),
//         _methodItem(Icons.more_horiz, '', false),
//       ],
//     );
//   }
//
//   Widget _methodItem(IconData icon, String text, bool selected) {
//     return Expanded(
//       child: Container(
//         height: 70,
//         decoration: BoxDecoration(
//           color: selected ? Colors.black87 : Colors.white,
//           borderRadius: BorderRadius.circular(12),
//           boxShadow: [
//             BoxShadow(
//               color: Colors.black.withOpacity(0.05),
//               blurRadius: 10,
//             ),
//           ],
//         ),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Icon(icon, color: selected ? Colors.white : Colors.grey),
//             if (text.isNotEmpty)
//               Text(
//                 text,
//                 style: TextStyle(
//                   color: selected ? Colors.white : Colors.grey,
//                 ),
//               ),
//           ],
//         ),
//       ),
//     );
//   }
//
//   Widget _chooseCardHeader() {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       children: const [
//         Text(
//           'Choose your card',
//           style: TextStyle(fontWeight: FontWeight.bold),
//         ),
//         Text(
//           'Add new+',
//           style: TextStyle(color: Colors.red),
//         ),
//       ],
//     );
//   }
//
//   Widget _creditCard() {
//     return Container(
//       height: 190,
//       width: double.infinity,
//       padding: const EdgeInsets.all(16),
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(16),
//         gradient: const LinearGradient(
//           colors: [Color(0xff4facfe), Color(0xff00c6fb)],
//         ),
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: const [
//           Align(
//             alignment: Alignment.topRight,
//             child: Text(
//               'VISA',
//               style: TextStyle(
//                 color: Colors.white,
//                 fontSize: 20,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//           ),
//           Spacer(),
//           Text(
//             '4364 1345 8932 8378',
//             style: TextStyle(
//               color: Colors.white,
//               fontSize: 18,
//               letterSpacing: 2,
//             ),
//           ),
//           SizedBox(height: 16),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               _cardInfo('CARDHOLDER NAME', 'Sunie Pham'),
//               _cardInfo('VALID THRU', '05/24'),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
//
//   static Widget _cardInfo(String title, String value) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text(
//           title,
//           style: TextStyle(color: Colors.white70, fontSize: 10),
//         ),
//         Text(
//           value,
//           style: TextStyle(color: Colors.white),
//         ),
//       ],
//     );
//   }
//
//   Widget _checkoutWith() {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         const Text('or check out with'),
//         const SizedBox(height: 12),
//         Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: const [
//             _PayIcon('PayPal'),
//             _PayIcon('VISA'),
//             _PayIcon('Master'),
//             _PayIcon('Alipay'),
//             _PayIcon('Amex'),
//           ],
//         ),
//       ],
//     );
//   }
//
//   Widget _summaryBox() {
//     return Container(
//       padding: const EdgeInsets.all(16),
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(12),
//         boxShadow: [
//           BoxShadow(
//             color: Colors.black.withOpacity(0.05),
//             blurRadius: 10,
//           ),
//         ],
//       ),
//       child: Column(
//         children: const [
//           _summaryRow('Product price', '\$110'),
//           _summaryRow('Shipping', 'Freeship'),
//           Divider(),
//           _summaryRow(
//             'Subtotal',
//             '\$110',
//             isBold: true,
//           ),
//         ],
//       ),
//     );
//   }
//
//   Widget _terms() {
//     return Row(
//       children: const [
//         Icon(Icons.check_box, color: Colors.green),
//         SizedBox(width: 8),
//         Expanded(
//           child: Text(
//             'I agree to Terms and conditions',
//             style: TextStyle(decoration: TextDecoration.underline),
//           ),
//         ),
//       ],
//     );
//   }
//
//   Widget _placeOrderButton() {
//     return SizedBox(
//       width: double.infinity,
//       height: 56,
//       child: ElevatedButton(
//         style: ElevatedButton.styleFrom(
//           backgroundColor: Colors.black87,
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(28),
//           ),
//         ),
//         onPressed: () {},
//         child: const Text(
//           'Place my order',
//           style: TextStyle(fontSize: 16),
//         ),
//       ),
//     );
//   }
// }
//
// // ------------------------------------------------------
//
// class _summaryRow extends StatelessWidget {
//   final String title;
//   final String value;
//   final bool isBold;
//
//   const _summaryRow(this.title, this.value, {this.isBold = false});
//
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(vertical: 6),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Text(title),
//           Text(
//             value,
//             style: TextStyle(
//               fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
//
// class _PayIcon extends StatelessWidget {
//   final String text;
//   const _PayIcon(this.text);
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: const EdgeInsets.all(10),
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(8),
//         border: Border.all(color: Colors.grey.shade300),
//       ),
//       child: Text(text),
//     );
//   }
// }

import 'package:flutter/material.dart';
import '../../payment/widgets/credit_card_widgets.dart';
import '../widgets/payment_method_selector.dart';
import '../widgets/payment_summary.dart';
import '../widgets/term_check_box.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});
  static const  String routeName ="CheckoutScreen" ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: const BackButton(color: Colors.black),
        centerTitle: true,
        title: const Text(
          'Check out',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 12),
            const Text(
              'STEP 2',
              style: TextStyle(color: Colors.grey, fontSize: 12),
            ),
            const SizedBox(height: 4),
            const Text(
              'Payment',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            const PaymentMethodSelector(),
            const SizedBox(height: 24),

            const SizedBox(height: 24),
            const PaymentSummary(),
            const SizedBox(height: 16),
            const TermsCheckbox(),
            const SizedBox(height: 24),
            const PlaceOrderButton(),
          ],
        ),
      ),
    );
  }
}

class PlaceOrderButton extends StatelessWidget {
  const PlaceOrderButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 56,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.black,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(28),
          ),
        ),
        onPressed: () {},
        child: const Text(
          'Place my order',
          style: TextStyle(fontSize: 16, color: Colors.white),
        ),
      ),
    );
  }
}
