import 'package:crave_app/application/home/home_controller.dart';
import 'package:crave_app/domain/core/theme/theme.dart';
import 'package:crave_app/presentation/core/widget/custom_button.dart';
import 'package:crave_app/presentation/core/widget/spacing.dart';
import 'package:crave_app/presentation/home/show_everyone_page.dart';
import 'package:crave_app/presentation/home/who_likes_me_page.dart';
import 'package:crave_app/presentation/home/widgets/top_tab_widget.dart';
import 'package:crave_app/presentation/home/widgets/show_everyone_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(HomeController());
    return Scaffold(
      body: Column(
        children: [
          addVerticalSpace(Get.mediaQuery.padding.top + 10),
          Center(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: Dimens.defaultMargin),
              child: SvgPicture.asset('assets/images/crave_logo.svg'),
            ),
          ),
          addVerticalSpace(30.w),
          Stack(
            fit: StackFit.loose,
            children: [
              Container(
                margin: const EdgeInsets.symmetric(
                    horizontal: Dimens.defaultMargin),
                height: 45.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: AppColors.greyBackground,
                ),
              ),
              Obx(
                () => Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: Dimens.defaultMargin),
                  child: Row(
                    children: [
                      TopTabWidget(
                        index: 0,
                        selectedIndex: controller.selectedTabIndex.value,
                        title: 'SHOW EVERYONE',
                        onPressed: () {
                          controller.selectedTabIndex.value = 0;
                          controller.pageController.animateToPage(
                            0,
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.easeInOut,
                          );
                        },
                      ),
                      TopTabWidget(
                        index: 1,
                        selectedIndex: controller.selectedTabIndex.value,
                        title: 'WHO LIKES ME',
                        onPressed: () {
                          controller.selectedTabIndex.value = 1;
                          controller.pageController.animateToPage(
                            1,
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.easeInOut,
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          addVerticalSpace(20),
          Expanded(
            child: PageView(
              controller: controller.pageController,
              physics: const NeverScrollableScrollPhysics(),
              children: [
                ShowEveryOnePage(),
                WhoLikesMePage(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
