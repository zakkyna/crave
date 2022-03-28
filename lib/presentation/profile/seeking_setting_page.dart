import 'package:crave_app/application/settings/seeking/seeking_setting_controller.dart';
import 'package:crave_app/application/settings/settings_bloc.dart';
import 'package:crave_app/domain/core/theme/theme.dart';
import 'package:crave_app/presentation/core/widget/custom_button.dart';
import 'package:crave_app/presentation/core/widget/spacing.dart';
import 'package:crave_app/presentation/profile/widgets/toggle_tile_widget.dart';
import 'package:crave_app/presentation/routers/routers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SeekingSettingPage extends GetView<SeekingSettingController> {
  final List<int> currentSeeking;
  const SeekingSettingPage(this.currentSeeking, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(SeekingSettingController());
    controller.loadSeeking(currentSeeking);
    final _bloc = context.read<SettingsBloc>();
    return Scaffold(
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
                        AddVerticalSpace(10.h),
                        Stack(
                          children: [
                            Center(
                              child: Padding(
                                padding: EdgeInsets.only(top: 10.h),
                                child: Text(
                                  'SEEKING',
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
                          onChanged: (value) => controller.toggleList(1),
                          value: controller.seekingList.contains(1),
                          title: 'MALE',
                        ),
                        ToggleTileWidget(
                          onChanged: (value) => controller.toggleList(2),
                          value: controller.seekingList.contains(2),
                          title: 'FEMALE',
                        ),
                        ToggleTileWidget(
                          onChanged: (value) => controller.toggleList(3),
                          value: controller.seekingList.contains(3),
                          title: 'OTHER',
                        ),
                      ],
                    ),
                  ),
                  CustomButton(
                    margin: const EdgeInsets.all(Dimens.defaultMargin),
                    height: 56.h,
                    child: isLoading ? const CircularProgressIndicator() : null,
                    onPressed: isLoading
                        ? null
                        : () {
                            _bloc.add(
                              SettingsEvent.saveSeeking(
                                // ignore: invalid_use_of_protected_member
                                controller.seekingList.value,
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
    );
  }
}
