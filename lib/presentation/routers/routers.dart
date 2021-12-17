import 'package:crave_app/presentation/auth/auth_listener.dart';
import 'package:crave_app/presentation/auth/auth_page.dart';
import 'package:crave_app/presentation/auth/welcome_page.dart';
import 'package:crave_app/presentation/intro/intro_page.dart';
import 'package:crave_app/presentation/landing/landing_page.dart';
import 'package:crave_app/presentation/subscription/buy_subscription_page.dart';
import 'package:get/get.dart';

class Routers {
  static const String main = '/';
  static const String home = '/home';
  static const String intro = '/intro';
  static const String auth = '/auth';
  static const String buySubscription = '/buy_subscription';

  final List<GetPage> routers = [
    GetPage(
      name: Routers.main,
      page: () => const AuthListenerWidget(
        authenticated: LandingPage(),
        unauthenticated: WelcomePage(),
      ),
    ),
    GetPage(
      name: Routers.home,
      page: () => const LandingPage(),
    ),
    GetPage(
      name: Routers.intro,
      page: () => const IntroPage(),
    ),
    GetPage(
      name: Routers.auth,
      page: () => const AuthPage(),
    ),
    GetPage(
      name: Routers.buySubscription,
      page: () => const BuySubscriptionPage(),
    ),
  ];
}
