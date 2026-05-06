import 'package:flutter/material.dart';
import 'package:newfashionstore/core/profile/widgets/setting_item.dart';
import '../screens/wish_list_screen.dart';

class SettingsCard extends StatelessWidget {
  const SettingsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: const [
          BoxShadow(
            blurRadius: 10,
            color: Colors.black12,
            offset: Offset(0, 4),
          )
        ],
      ),
      child: Column(
        children: [
          SettingsItem(
            icon: Icons.location_on_outlined,
            title: "Address",
            onTap: () {
              // Navigator.pushNamed(context, AddressScreen.routeName);

            },
          ),
          SettingsItem(
            icon: Icons.account_balance_wallet_outlined,
            title: "Payment method",
            onTap: () {
              // Navigator.pushNamed(context, AddressScreen.routeName);

            },
          ),
          SettingsItem(
            icon: Icons.card_giftcard_outlined,
            title: "Voucher",
            onTap: () {
              // Navigator.pushNamed(context, VoucherScreen.routeName);

            },
          ),
          SettingsItem(
            icon: Icons.favorite_border,
            title: "My Wishlist",
            onTap: () {
              Navigator.pushNamed(context, WishlistScreen.routeName);

            },
          ),
          SettingsItem(
            icon: Icons.star_border,
            title: "Rate this app",
            onTap: () {
              // Navigator.pushNamed(context, RateProductScreen.routeName);

            },
          ),
          SettingsItem(
            icon: Icons.logout,
            title: "Log out",
            onTap: () {
              // Navigator.pushNamed(context, SettingScreen.routeName);

            },
            isLast: true,
          ),
        ],
      ),
    );
  }
}
