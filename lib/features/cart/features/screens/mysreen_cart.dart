import 'package:flutter/material.dart';
import '../../models/cart_item_model.dart';
import '../widgets/cart_item_card.dart';
import '../widgets/cart_summary_section.dart';

class MyNewCartScreen extends StatefulWidget {
  const MyNewCartScreen({super.key});
  static const String routeName = "MyNewCartScreen";

  @override
  State<MyNewCartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<MyNewCartScreen> {
  final List<CartItemModel> cartItems = [
    CartItemModel(
      title: 'Sportwear Set',
       image: 'assets/images/cart3.png',
      price: 80,
      size: 'L',
      color: 'Cream',
    ),
    CartItemModel(
      title: 'Turtleneck Sweater',
    image: 'assets/images/cartoo.png',
      price: 39.99,
      size: 'M',
      color: 'White',
    ),
    CartItemModel(
      title: 'Cotton T-shirt',
     image: 'assets/images/cartt.png',
      price: 30,
      size: 'L',
      color: 'Black',
    ),
  ];

  double get subtotal {
    return cartItems
        .where((item) => item.isSelected)
        .fold(0, (sum, item) => sum + item.price * item.quantity);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF9F9F9),
      appBar: AppBar(
        title: const Text('Your Cart'),
        centerTitle: true,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: cartItems.length,
                itemBuilder: (context, index) {
                  final item = cartItems[index];
                  return CartItemCard(
                    item: item,
                    onAdd: () {
                      setState(() => item.quantity++);
                    },
                    onRemove: () {
                      if (item.quantity > 1) {
                        setState(() => item.quantity--);
                      }
                    },
                    onSelect: (value) {
                      setState(() => item.isSelected = value ?? true);
                    },
                  );
                },
              ),
            ),
            CartSummarySection(subtotal: subtotal),
          ],
        ),
      ),
    );
  }
}
