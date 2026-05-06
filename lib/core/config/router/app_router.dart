import 'package:flutter/material.dart';

import '../../../features/Auth/Register/presentation/screens/signup_screen.dart';
import '../../../features/Auth/change_password/presentation/screens/change_password.dart';
import '../../../features/Auth/create _newpassword/screens/create_new_password.dart';
import '../../../features/Auth/forget_password/presentation/forgetpassword_screen.dart';
import '../../../features/Auth/login/presentation/screens/login_screen.dart';
import '../../../features/Home/presentation/screens/Main_layout.dart';
import '../../../features/Home/presentation/screens/notification_screen.dart';
import '../../../features/address/screens/delivert_adress_screen.dart';
import '../../../features/cart/features/screens/mysreen_cart.dart';
import '../../../features/checkk_out_ttttt/screens/checkout_payment .dart';
import '../../../features/checkk_out_ttttt/screens/checkout_payment2_screen.dart';
import '../../../features/checkk_out_ttttt/screens/order_completed_screen.dart';
import '../../../features/checkk_out_ttttt/screens/shipping_screen.dart';
import '../../../features/onboarding/presentation/onboarding_scrren.dart';
import '../../../features/orders/screens/Rate_product_screen.dart';
import '../../../features/orders/screens/my_orders_screen.dart';
import '../../../features/orders/screens/order_details_screen.dart';
import '../../../features/orders/screens/order_info_screen.dart';
import '../../../features/orders/screens/track_order_screen.dart';
import '../../../features/payment/screens/add_new_card _screen.dart';
import '../../../features/payment/screens/payment_screen.dart';
import '../../../features/products_details/screens/products_details_content_screen.dart';
import '../../../features/products_details/widgets/product_details_content.dart';
import '../../../features/profile/screens/profile_screen.dart';
import '../../../features/profile/screens/wish_list_Board_screen.dart';
import '../../../features/profile/screens/wish_list_screen.dart';
import '../../../features/search_discover_foundresults/presentation/screens/Discover_screen.dart';
import '../../../features/search_discover_foundresults/presentation/screens/found_results.dart';
import '../../../features/setting/screens/setting_profile.dart';
import '../../../features/voucher/screens/voucher_screen.dart';
import '../../../features/welcome/screens/welcome_screen.dart';


abstract class AppRouter {
  static Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case WelcomeScreen.routeName:
        return MaterialPageRoute(builder: (c) => const WelcomeScreen());
      case OnboardingScreen.routeName:
        return MaterialPageRoute(builder: (_) => OnboardingScreen());
      case MainLayout.routeName:
        return MaterialPageRoute(builder: (_) => const MainLayout());
      case SignUpScreen.routeName:
        return MaterialPageRoute(builder: (_) => const SignUpScreen());
      case LoginScreen.routeName:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      case ChangePasswordScreen.routeName:
        return MaterialPageRoute(builder: (_) => const ChangePasswordScreen());
      case ForgotPasswordScreen.routeName:
        return MaterialPageRoute(builder: (_) => const ForgotPasswordScreen());
     // case VerificationCodeScreen.routeName:
      //  return MaterialPageRoute(
         //   builder: (_) => const VerificationCodeScreen());
      //case SearchScreen.routeName:
        //return MaterialPageRoute(builder: (_) => const SearchScreen());
      case CreateNewPasswordScreen.routeName:
        return MaterialPageRoute(
            builder: (_) => const CreateNewPasswordScreen());
      case SettingScreen.routeName:
        return MaterialPageRoute(builder: (_) => const SettingScreen());
      case NotificationScreen.routeName:
        return MaterialPageRoute(builder: (_) => const NotificationScreen());
      case AddNewCardScreen.routeName:
        return MaterialPageRoute(builder: (_) => const AddNewCardScreen());
    case ProfileScreen.routeName:
    return MaterialPageRoute(builder: (_) => const ProfileScreen());
      case RateProductScreen.routeName:
        return MaterialPageRoute(builder: (_) => const RateProductScreen());
      case ProductDetailsContent.routeName:
        return MaterialPageRoute(builder: (_) => ProductDetailsContent());
      case TrackOrderScreen.routeName:
        return MaterialPageRoute(builder: (_) => const TrackOrderScreen());
      case VoucherScreen.routeName:
        return MaterialPageRoute(builder: (_) => const VoucherScreen());


      case ResultsScreen.routeName:
        return MaterialPageRoute(builder: (_) => const ResultsScreen(query: '',));


      case AddressScreen.routeName:
        return MaterialPageRoute(builder: (_) => const AddressScreen());
      case DiscoverScreen.routeName:
        return MaterialPageRoute(builder: (_) => const DiscoverScreen());
       case ProductDetailsContentScreen.routeName:
        return MaterialPageRoute(builder: (_) => const ProductDetailsContentScreen());
      case ShippingScreen.routeName:
        return MaterialPageRoute(builder: (_) => const ShippingScreen());
      case OrderCompletedScreen.routeName:
        return MaterialPageRoute(builder: (_) => const OrderCompletedScreen());
      case PaymentScreen.routeName:
        return MaterialPageRoute(builder: (_) => const PaymentScreen());
      case CheckoutScreen.routeName:
        return MaterialPageRoute(builder: (_) => const CheckoutScreen());
      case OrderInfoScreen.routeName:
        return MaterialPageRoute(builder: (_) => const OrderInfoScreen());
      case MyOrdersScreen.routeName:
        return MaterialPageRoute(builder: (_) => const MyOrdersScreen());

      case OrderDetailsScreen.routeName:
        return MaterialPageRoute(builder: (_) => const OrderDetailsScreen());
      case CheckoutPaymentScreen.routeName:
        return MaterialPageRoute(builder: (_) => const CheckoutPaymentScreen());

      case WishlistBoardsScreen.routeName:
        return MaterialPageRoute(builder: (_) => const WishlistBoardsScreen());
      case MyNewCartScreen.routeName:
        return MaterialPageRoute(builder: (_) => const MyNewCartScreen());
      case WishlistScreen.routeName:
        return MaterialPageRoute(builder: (_) => const WishlistScreen());
      default:
        return MaterialPageRoute(
          builder: (context) => Scaffold(
            body: Center(
              child: Text("No route define for ${settings.name}"),
            ),
          ),
        );
    }
  }
}
