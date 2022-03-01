import 'package:crave_app/application/landing/bottom_tab_controller.dart';
import 'package:crave_app/domain/core/theme/theme.dart';
import 'package:crave_app/domain/profile/profile.dart';
import 'package:crave_app/presentation/chat/rooms_page.dart';
import 'package:crave_app/presentation/home/home_page.dart';
import 'package:crave_app/presentation/profile/complete_profile_page.dart';
import 'package:crave_app/presentation/profile/profile_page.dart';
import 'package:crave_app/presentation/profile/uncomplete_profile_listener.dart';
import 'package:crave_app/presentation/subscription/buy_subscription_page.dart';
import 'package:crave_app/presentation/subscription/subscription_listener.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class LandingPage extends GetView<BottomTabController> {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return Scaffold(
    //   bottomNavigationBar: const BottomTab(),
    //   child: Obx(() => pages[controller.tabIndex.value]),
    // );
    return SubscriptionListener(
      unsubscribed: const BuySubscriptionPage(),
      subscribed: UncompleteProfileListener(
        uncompleteProfileBuilder: (profile) => CompleteProfilePage(profile),
        completedProfileBuilder: (profile) => BottomTabView(
          currentProfile: profile,
        ),
      ),
    );
  }
}

class BottomTabView extends GetView<BottomTabController> {
  final Profile currentProfile;
  const BottomTabView({
    Key? key,
    required this.currentProfile,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => BottomTabController());
    final pages = [
      HomePage(currentProfile),
      RoomsPage(currentProfile),
      ProfilePage(currentProfile),
    ];
    BottomNavigationBarItem buildBottomNavItem({
      required String title,
      required String assets,
    }) {
      return BottomNavigationBarItem(
        icon: Container(
          margin: const EdgeInsets.all(5),
          child: SvgPicture.asset(assets,
              color: AppColors.mainColor.withOpacity(0.2)),
        ),
        activeIcon: Container(
          margin: const EdgeInsets.all(5),
          child: SvgPicture.asset(
            assets,
            color: AppColors.mainColor,
          ),
        ),
        label: title,
      );
    }

    return Obx(
      () => Scaffold(
        resizeToAvoidBottomInset: false,
        body: pages[controller.tabIndex.value],
        bottomNavigationBar: Theme(
          data: ThemeData(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
          ),
          child: BottomNavigationBar(
            items: <BottomNavigationBarItem>[
              buildBottomNavItem(
                assets: 'assets/icon/tab_icon_home_active.svg',
                title: 'Home',
              ),
              buildBottomNavItem(
                assets: 'assets/icon/tab_icon_chat_active.svg',
                title: 'Chat',
              ),
              buildBottomNavItem(
                assets: 'assets/icon/tab_icon_profile_active.svg',
                title: 'Profile',
              ),
            ],
            showSelectedLabels: false,
            showUnselectedLabels: false,
            currentIndex: controller.tabIndex.value,
            selectedItemColor: AppColors.mainColor,
            selectedFontSize: 11,
            unselectedFontSize: 11,
            elevation: 25.0,
            type: BottomNavigationBarType.fixed,
            enableFeedback: false,
            onTap: (index) {
              controller.tabIndex.value = index;
            },
            backgroundColor: Colors.white,
          ),
        ),
      ),
    );
  }
}
