// import 'package:flutter/material.dart';
// import '../widgets/order_card.dart';
// import '../widgets/satus_tab.dart';
//
// class MyOrdersScreen extends StatefulWidget {
//   const MyOrdersScreen({super.key});
//   static const  String routeName ="MyOrdersScreen" ;
//
//   @override
//   State<MyOrdersScreen> createState() => _MyOrdersScreenState();
// }
//
// class _MyOrdersScreenState extends State<MyOrdersScreen> {
//   int selectedTab = 0;
//
//   final tabs = ['Pending', 'Delivered', 'Cancelled'];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('My Orders'),
//         centerTitle: true,
//         leading: IconButton(
//           icon: const Icon(Icons.menu),
//           onPressed: () {},
//         ),
//         actions: [
//           IconButton(
//             icon: const Icon(Icons.notifications_none),
//             onPressed: () {},
//           ),
//         ],
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16),
//         child: Column(
//           children: [
//             /// TABS
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: List.generate(
//                 tabs.length,
//                     (index) => StatusTab(
//                   title: tabs[index],
//                   isSelected: selectedTab == index,
//                   onTap: () {
//                     setState(() {
//                       selectedTab = index;
//                     });
//                   },
//                 ),
//               ),
//             ),
//
//             const SizedBox(height: 20),
//
//             /// ORDERS LIST
//             Expanded(
//               child: ListView(
//                 children: const [
//                   OrderCard(
//                     orderId: '#1524',
//                     date: '13/05/2021',
//                     trackingNumber: 'IK287368838',
//                     quantity: 2,
//                     subtotal: 110,
//                     status: 'PENDING',
//                   ),
//                   OrderCard(
//                     orderId: '#1524',
//                     date: '12/05/2021',
//                     trackingNumber: 'IK2873218897',
//                     quantity: 3,
//                     subtotal: 230,
//                     status: 'PENDING',
//                   ),
//                   OrderCard(
//                     orderId: '#1524',
//                     date: '10/05/2021',
//                     trackingNumber: 'IK237368820',
//                     quantity: 5,
//                     subtotal: 490,
//                     status: 'PENDING',
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         currentIndex: 2,
//         items: const [
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home_outlined),
//             label: '',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.search),
//             label: '',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.shopping_bag),
//             label: '',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.person_outline),
//             label: '',
//           ),
//         ],
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import '../../home/presentation/screens/notification_screen.dart';
import '../widgets/order_tab_bar.dart';
import '../widgets/order_card.dart';
import 'order_details_screen.dart';

class MyOrdersScreen extends StatefulWidget {
  const MyOrdersScreen({super.key});
  static const String routeName = "MyOrdersScreen";

  @override
  State<MyOrdersScreen> createState() => _MyOrdersScreenState();
}

class _MyOrdersScreenState extends State<MyOrdersScreen> {
  int selectedTab = 0;

  OrderStatus getOrderStatus() {
    if (selectedTab == 1) {
      return OrderStatus.delivered;
    } else if (selectedTab == 2) {
      return OrderStatus.cancelled;
    } else {
      return OrderStatus.pending;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Builder(
          builder: (context) => IconButton(
            icon: const Icon(Icons.menu, color: Colors.black),
            onPressed: () => Scaffold.of(context).openDrawer(),
          ),
        ),
        title: const Text(
          'My Orders',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications_none, color: Colors.black),
            onPressed: () {
              Navigator.pushNamed(
                context,
                NotificationScreen.routeName,
              );
            },
          ),
        ],
      ),
      body: Column(
        children: [
          OrderTabBar(
            selectedIndex: selectedTab,
            onChanged: (index) {
              setState(() => selectedTab = index);
            },
          ),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(16),
              children: [
                OrderCard(
                  orderId: '#1514',
                  date: '13/05/2021',
                  trackingNumber: 'IK987362341',
                  quantity: 2,
                  subtotal: 110,
                  status: getOrderStatus(),
                  onDetailsTap: () {
                    Navigator.pushNamed(
                      context,
                      OrderDetailsScreen.routeName,
                    );
                  },
                ),
                OrderCard(
                  orderId: '#1679',
                  date: '12/05/2021',
                  trackingNumber: 'IK3873218891',
                  quantity: 3,
                  subtotal: 450,
                  status: getOrderStatus(),
                  onDetailsTap: () {
                    Navigator.pushNamed(
                      context,
                      OrderDetailsScreen.routeName,
                    );
                  },
                ),
                OrderCard(
                  orderId: '#1524',
                  date: '10/05/2021',
                  trackingNumber: 'IK237368820',
                  quantity: 5,
                  subtotal: 490,
                  status: getOrderStatus(),
                  onDetailsTap: () {
                    Navigator.pushNamed(
                      context,
                      OrderDetailsScreen.routeName,
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
