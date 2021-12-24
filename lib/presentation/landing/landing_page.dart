import 'package:crave_app/application/landing/bottom_tab_controller.dart';
import 'package:crave_app/domain/core/theme/theme.dart';
import 'package:crave_app/presentation/chat/chat_page.dart';
import 'package:crave_app/presentation/home/home_page.dart';
import 'package:crave_app/presentation/profile/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bottomTabController = Get.put(BottomTabController());
    final pages = [
      const HomePage(),
      const ChatPage(),
      const ProfilePage(),
    ];
    return Scaffold(
      bottomNavigationBar: const BottomTab(),
      body: Obx(() => pages[bottomTabController.tabIndex.value]),
    );
  }
}

class BottomTab extends GetView<BottomTabController> {
  const BottomTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
      () => Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(20), topLeft: Radius.circular(20)),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              spreadRadius: 1,
              blurRadius: 5,
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
          child: BottomNavigationBar(
            items: <BottomNavigationBarItem>[
              buildBottomNavItem(
                assets: 'assets/icon/tab_icon_home_active.svg',
                title: 'Home',
              ),
              buildBottomNavItem(
                assets: 'assets/icon/tab_icon_chat_active.svg',
                title: 'Paket',
              ),
              buildBottomNavItem(
                assets: 'assets/icon/tab_icon_profile_active.svg',
                title: 'Baterai',
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
