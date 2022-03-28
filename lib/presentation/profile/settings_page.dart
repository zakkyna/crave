import 'package:crave_app/application/auth/auth_bloc.dart';
import 'package:crave_app/application/settings/settings_bloc.dart';
import 'package:crave_app/domain/core/theme/theme.dart';
import 'package:crave_app/presentation/core/widget/custom_button.dart';
import 'package:crave_app/presentation/core/widget/spacing.dart';
import 'package:crave_app/presentation/profile/notification_setting_page.dart';
import 'package:crave_app/presentation/profile/seeking_setting_page.dart';
import 'package:crave_app/presentation/profile/widgets/setting_item_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _bloc = context.read<SettingsBloc>();
    return Scaffold(
      body: BlocBuilder<SettingsBloc, SettingsState>(
        bloc: _bloc..add(const SettingsEvent.loadData()),
        builder: (context, state) {
          final settingData = state.maybeMap(
            orElse: () => null,
            loadSuccess: (success) => success.settingData,
          );
          if (settingData == null) {
            final isFailure = state.maybeMap(
              orElse: () => false,
              loadFailure: (_) => true,
            );
            if (isFailure) {
              return Padding(
                padding: const EdgeInsets.all(Dimens.defaultMargin),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Unable to load settings',
                      style: Styles.kefa16Regular,
                    ),
                    AddVerticalSpace(10.h),
                    CustomButton(
                      label: 'Try again',
                      onPressed: () {
                        _bloc.add(const SettingsEvent.loadData());
                      },
                    ),
                  ],
                ),
              );
            }
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          final seekingList = state.maybeMap(
            loadSuccess: (state) => state.settingData.seeking,
            orElse: () => <int>[],
          );
          final seekingString = state.maybeMap(
            loadSuccess: (loadSuccess) {
              final mapSeeking = {1: 'MALE', 2: 'FEMALE', 3: 'OTHER'};
              final listSeeking = loadSuccess.settingData.seeking;
              final isAll = listSeeking.length == 3;
              if (isAll) {
                return 'ALL';
              }
              return listSeeking.map((e) => mapSeeking[e]).join(', ');
            },
            orElse: () => '',
          );
          return SafeArea(
            child: Column(
              children: [
                Expanded(
                  child: ListView(
                    children: [
                      AddVerticalSpace(10.h),
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
                      // SettingItemWidget(
                      //   title: 'SEEKING',
                      //   trailing: Text(
                      //     'FEMALE',
                      //     style: Styles.kefa18Regular.copyWith(
                      //       color: AppColors.mainColor2,
                      //     ),
                      //   ),
                      //   onTap: () {},
                      // ),
                      SettingItemWidget(
                        title: 'SEEKING',
                        onTap: () {
                          Get.to(() => SeekingSettingPage(seekingList))
                              ?.then((value) {
                            _bloc.add(const SettingsEvent.loadData());
                          });
                        },
                        trailing: Text(
                          seekingString,
                          style: Styles.kefa16Regular.copyWith(
                            color: AppColors.mainColor2,
                          ),
                        ),
                      ),
                      SettingItemWidget(
                        title: 'NOTIFICATIONS',
                        onTap: () {
                          Get.to(() => NotificationSettingPage(settingData))
                              ?.then((value) {
                            _bloc.add(const SettingsEvent.loadData());
                          });
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
          );
        },
      ),
    );
  }
}
