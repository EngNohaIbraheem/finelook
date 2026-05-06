import 'package:flutter/material.dart';
import 'package:newfashionstore/core/config/router/app_router.dart';
import 'package:newfashionstore/features/onboarding/presentation/onboarding_scrren.dart';
import 'package:newfashionstore/features/onboarding/presentation/widgets/onboarding_background.dart';

import 'features/auth/login/presentation/screens/login_screen.dart';
import 'features/cart/features/screens/my_cart.dart';
import 'features/cart/features/screens/mysreen_cart.dart';
import 'features/checkk_out_ttttt/screens/checkout_payment .dart';
import 'features/checkk_out_ttttt/screens/checkout_payment2_screen.dart';
import 'features/checkk_out_ttttt/screens/shipping_screen.dart';
import 'features/home/presentation/screens/Main_layout.dart';
import 'features/home/presentation/screens/home_screen.dart';
import 'features/payment/screens/payment_screen.dart';
import 'features/products_details/screens/products_details_content_screen.dart';
import 'features/profile/screens/wish_list_Board_screen.dart';
import 'features/profile/screens/wish_list_screen.dart';
import 'features/search_discover_foundresults/presentation/screens/Discover_screen.dart';
import 'features/search_discover_foundresults/presentation/screens/found_results.dart';
import 'features/welcome/screens/welcome_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'shopping online',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      onGenerateRoute: AppRouter.generateRoute,
      initialRoute: WelcomeScreen.routeName,
    );
  }
}
