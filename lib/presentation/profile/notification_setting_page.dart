import 'package:crave_app/application/notification/controller/notification_setting_controller.dart';
import 'package:crave_app/application/settings/settings_bloc.dart';
import 'package:crave_app/domain/core/theme/theme.dart';
import 'package:crave_app/domain/settings/setting_data.dart';
import 'package:crave_app/presentation/core/widget/custom_button.dart';
import 'package:crave_app/presentation/core/widget/spacing.dart';
import 'package:crave_app/presentation/profile/widgets/toggle_tile_widget.dart';
import 'package:crave_app/presentation/routers/routers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class NotificationSettingPage extends GetView<NotificationSettingController> {
  final SettingData currentSetting;
  const NotificationSettingPage(this.currentSetting, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _bloc = context.read<SettingsBloc>();
    Get.put(NotificationSettingController());
    controller.loadSettingData(currentSetting);
    return Scaffold(
      body: Scaffold(
        body: BlocConsumer<SettingsBloc, SettingsState>(
          listener: (context, state) {
            state.maybeMap(
              updateFailure: (error) {
                Get.snackbar(
                  'Sorry',
                  error.failure.map(
                    unexpected: (_) => 'Unexpected error',
                    noInternet: (_) => 'No internet',
                    unauthenticated: (_) => 'Unauthenticated',
                    serverError: (error) => error.message,
                  ),
                );
              },
              updateSuccess: (success) {
                Get.offAllNamed(Routers.main);
              },
              orElse: () {},
            );
          },
          builder: (context, state) {
            final isLoading = state.maybeMap(
              orElse: () => false,
              loading: (_) => true,
            );
            return Obx(
              () => SafeArea(
                child: Column(
                  children: [
                    Expanded(
                      child: ListView(
                        children: [
                          const AddVerticalSpace(10),
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
                            onChanged: (value) =>
                                controller.changePushNotification(value),
                            value: controller.pushNotification.value,
                            title: 'Push Notifications',
                          ),
                          ToggleTileWidget(
                            onChanged: (value) =>
                                controller.changeNewMessageAlert(value),
                            value: controller.newMessageAlert.value,
                            title: 'New Messages Alerts',
                          ),
                          ToggleTileWidget(
                            onChanged: (value) =>
                                controller.likeNotification(value),
                            value: controller.likeNotification.value,
                            title: 'Like Notifications',
                          ),
                          ToggleTileWidget(
                            onChanged: (value) =>
                                controller.chatTimerNotification(value),
                            value: controller.chatTimerNotification.value,
                            title: 'Chat Timer Notifications',
                          ),
                        ],
                      ),
                    ),
                    CustomButton(
                      margin: const EdgeInsets.all(Dimens.defaultMargin),
                      height: 56.h,
                      child:
                          isLoading ? const CircularProgressIndicator() : null,
                      onPressed: isLoading
                          ? null
                          : () {
                              _bloc.add(
                                SettingsEvent.saveNotification(
                                  pushNotification:
                                      controller.pushNotification.value,
                                  chatTimerNotification:
                                      controller.chatTimerNotification.value,
                                  likeNotification:
                                      controller.likeNotification.value,
                                  newMessageAlert:
                                      controller.newMessageAlert.value,
                                ),
                              );
                            },
                      label: 'SAVE',
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
