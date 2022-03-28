import 'package:crave_app/presentation/auth/auth_listener.dart';
import 'package:crave_app/presentation/auth/auth_page.dart';
import 'package:crave_app/presentation/auth/welcome_page.dart';
import 'package:crave_app/presentation/intro/intro_page.dart';
import 'package:crave_app/presentation/landing/landing_page.dart';
import 'package:crave_app/presentation/profile/settings_page.dart';
import 'package:crave_app/presentation/subscription/buy_subscription_page.dart';
import 'package:get/get.dart';

class Routers {
  static const String main = '/';
  static const String intro = '/intro';
  static const String auth = '/auth';
  static const String buySubscription = '/buy_subscription';
  static const String completeProfile = '/complete_profile';
  static const String chatRoom = '/chatroom';
  static const String settings = '/settings';

  final List<GetPage> routers = [
    GetPage(
      name: Routers.main,
      page: () => const AuthListenerWidget(
        authenticated: LandingPage(),
        unauthenticated: WelcomePage(),
        newUser: AuthPage(pageIndex: 2),
      ),
    ),
    GetPage(
      name: Routers.intro,
      page: () => const IntroPage(),
    ),
    GetPage(
      name: Routers.auth,
      page: () => AuthPage(
        pageIndex: ((Get.arguments ?? 0) as int),
      ),
    ),
    GetPage(
      name: Routers.buySubscription,
      page: () => const BuySubscriptionPage(),
    ),
    GetPage(
      name: Routers.settings,
      page: () => const SettingsPage(),
    ),
  ];
}
