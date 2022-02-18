import 'package:crave_app/domain/core/theme/theme.dart';
import 'package:crave_app/presentation/core/widget/custom_button.dart';
import 'package:crave_app/presentation/core/widget/spacing.dart';
import 'package:crave_app/presentation/profile/widgets/toggle_tile_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class NotificationSettingPage extends StatelessWidget {
  const NotificationSettingPage({Key? key}) : super(key: key);

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
                            'NOTIFICATIONS',
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
                  ToggleTileWidget(
                    onChanged: (value) {},
                    value: true,
                    title: 'Push Notifications',
                  ),
                  ToggleTileWidget(
                    onChanged: (value) {},
                    value: true,
                    title: 'New Messages Alerts',
                  ),
                  ToggleTileWidget(
                    onChanged: (value) {},
                    value: true,
                    title: 'Like Notifications',
                  ),
                  ToggleTileWidget(
                    onChanged: (value) {},
                    value: true,
                    title: 'Chat Timer Notifications',
                  ),
                ],
              ),
            ),
            CustomButton(
              margin: const EdgeInsets.all(Dimens.defaultMargin),
              height: 56.h,
              onPressed: () {},
              label: 'SAVE',
            ),
          ],
        ),
      ),
    );
  }
}
