import 'dart:async';

import 'package:crave_app/application/home/home_controller.dart';
import 'package:crave_app/application/landing/bottom_tab_controller.dart';
import 'package:crave_app/application/post/post_bloc.dart';
import 'package:crave_app/domain/core/theme/theme.dart';
import 'package:crave_app/domain/profile/profile.dart';
import 'package:crave_app/presentation/core/widget/spacing.dart';
import 'package:crave_app/presentation/home/show_everyone_page.dart';
import 'package:crave_app/presentation/home/who_likes_me_page.dart';
import 'package:crave_app/presentation/home/widgets/top_tab_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class HomePage extends GetView<HomeController> {
  final Profile currentProfile;
  const HomePage(this.currentProfile, {Key? key}) : super(key: key);

  Future<bool> initializeController() {
    Completer<bool> completer = Completer<bool>();

    /// Callback called after widget has been fully built
    WidgetsBinding.instance!.addPostFrameCallback((timeStamp) {
      completer.complete(true);
    });

    return completer.future;
  }

  @override
  Widget build(BuildContext context) {
    Get.put(HomeController());
    return Scaffold(
      body: BlocListener<PostBloc, PostState>(
        listener: (context, state) {
          state.maybeMap(
            orElse: () {},
            isCreatingRoom: (_) {
              if (Get.isDialogOpen ?? false) {
                Get.back();
              }
              Get.defaultDialog(
                title: 'Creating Room',
                content: SizedBox(
                  width: ScreenUtil().setWidth(200),
                  height: ScreenUtil().setHeight(200),
                  child: const Center(
                    child: CircularProgressIndicator(),
                  ),
                ),
              );
            },
            createRoomSuccess: (value) {
              if (Get.isDialogOpen ?? false) {
                Get.back();
              }
              Get.find<BottomTabController>().changeTabIndex(1);
            },
            chatFailure: (value) {
              final failure = value.failure;
              if (Get.isDialogOpen ?? false) {
                Get.back();
              }
              final message = failure.maybeMap(
                noInternet: (_) => 'No internet',
                unexpected: (_) => 'Unexpected error',
                userNotFound: (_) => 'User not found',
                unauthenticated: (_) => 'Unauthenticated',
                serverError: (message) => 'Server error: $message',
                unauthorized: (_) => 'Unauthorized',
                expired: (_) => 'Chat Expired',
                orElse: () => 'Unexpected error',
              );
              Get.snackbar('Sorry', message);
            },
          );
        },
        child: Column(
          children: [
            AddVerticalSpace(Get.mediaQuery.padding.top + 10),
            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: Dimens.defaultMargin),
                child: SvgPicture.asset('assets/images/crave_logo.svg'),
              ),
            ),
            AddVerticalSpace(30.w),
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
                Obx(() {
                  initializeController().then((value) {
                    if (controller.pageController.page?.round() !=
                        controller.selectedTabIndex.value) {
                      controller.pageController.jumpToPage(
                        controller.selectedTabIndex.value,
                        // duration: const Duration(milliseconds: 300),
                        // curve: Curves.easeInOut,
                      );
                    }
                  });

                  return Padding(
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
                          },
                        ),
                        TopTabWidget(
                          index: 1,
                          selectedIndex: controller.selectedTabIndex.value,
                          title: 'WHO LIKES ME',
                          onPressed: () {
                            controller.selectedTabIndex.value = 1;
                          },
                        ),
                      ],
                    ),
                  );
                }),
              ],
            ),
            AddVerticalSpace(20),
            Expanded(
              child: PageView(
                physics: const NeverScrollableScrollPhysics(),
                controller: controller.pageController,
                onPageChanged: (index) {
                  controller.selectedTabIndex.value = index;
                },
                children: [
                  ShowEveryOnePage(currentProfile),
                  WhoLikesMePage(currentProfile),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
