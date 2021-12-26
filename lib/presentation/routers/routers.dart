import 'package:crave_app/presentation/auth/auth_listener.dart';
import 'package:crave_app/presentation/auth/auth_page.dart';
import 'package:crave_app/presentation/auth/welcome_page.dart';
import 'package:crave_app/presentation/chat/chat_room_page.dart';
import 'package:crave_app/presentation/intro/intro_page.dart';
import 'package:crave_app/presentation/landing/landing_page.dart';
import 'package:crave_app/presentation/profile/complete_profile_page.dart';
import 'package:crave_app/presentation/subscription/buy_subscription_page.dart';
import 'package:get/get.dart';

class Routers {
  static const String main = '/';
  static const String landing = '/landing';
  static const String intro = '/intro';
  static const String auth = '/auth';
  static const String buySubscription = '/buy_subscription';
  static const String completeProfile = '/complete_profile';
  static const String chatRoom = '/chatroom';

  final List<GetPage> routers = [
    GetPage(
      name: Routers.main,
      page: () => const AuthListenerWidget(
        authenticated: LandingPage(),
        unauthenticated: WelcomePage(),
      ),
    ),
    GetPage(
      name: Routers.landing,
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
    GetPage(
      name: Routers.completeProfile,
      page: () => const CompleteProfilePage(),
    ),
    GetPage(
      name: Routers.chatRoom,
      page: () => const ChatRoomPage(),
    ),
  ];
}
