import 'package:crave_app/application/auth/auth_bloc.dart';
import 'package:crave_app/application/chat/chatroom_controller.dart';
import 'package:crave_app/domain/core/theme/theme.dart';
import 'package:crave_app/presentation/core/widget/custom_button.dart';
import 'package:crave_app/presentation/core/widget/spacing.dart';
import 'package:crave_app/presentation/profile/widgets/setting_item_widgets.dart';
import 'package:crave_app/presentation/routers/routers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: ListView(
                children: [
                  AddVerticalSpace(10),
                  Stack(
                    children: [
                      Center(
                        child: Padding(
                          padding: EdgeInsets.only(top: 10.h),
                          child: Text(
                            'SETTINGS',
                            style: Styles.kefa18SemiBold,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 20.w,
                        ),
                        child: IconButton(
                          icon: Icon(
                            Icons.chevron_left,
                            color: AppColors.mainColor,
                            size: 30.sp,
                          ),
                          onPressed: () => Get.back(),
                        ),
                      ),
                    ],
                  ),
                  AddVerticalSpace(30.h),
                  SettingItemWidget(
                    title: 'SELECT GENDER',
                    onTap: () {},
                  ),
                  SettingItemWidget(
                    title: 'NOTIFICATIONS',
                    onTap: () {
                      Get.toNamed(Routers.notificationSetting);
                    },
                  ),
                  SettingItemWidget(
                    title: 'FAQ',
                    onTap: () {},
                  ),
                  SettingItemWidget(
                    title: 'ABOUT CRAVE',
                    onTap: () {},
                  ),
                ],
              ),
            ),
            CustomButton(
              margin: const EdgeInsets.all(Dimens.defaultMargin),
              height: 56.h,
              onPressed: () {
                context.read<AuthBloc>().add(const AuthEvent.signedOut());
                Get.back();
              },
              label: 'LOG OUT',
              color: const Color(0xFFFF6278),
            ),
          ],
        ),
      ),
    );
  }
}
