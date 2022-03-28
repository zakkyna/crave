import 'package:crave_app/application/auth/register/register_bloc.dart';
import 'package:crave_app/domain/core/theme/theme.dart';
import 'package:crave_app/presentation/auth/auth_steps/push_notification_setting_page.dart';
import 'package:crave_app/presentation/auth/widgets/auth_scafold.dart';
import 'package:crave_app/presentation/core/widget/custom_button.dart';
import 'package:crave_app/presentation/core/widget/spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

class LocationSettingPage extends StatelessWidget {
  const LocationSettingPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (context.read<RegisterBloc>().state.locationPermissionAllowed) {
      WidgetsBinding.instance!.addPostFrameCallback((timeStamp) {
        Get.off(() => const PushNotificationSettingPage());
      });
    }
    return BlocConsumer<RegisterBloc, RegisterState>(
      listener: (context, state) {
        if (state.locationPermissionAllowed) {
          Get.to(() => const PushNotificationSettingPage());
        }
      },
      builder: (context, state) {
        return AuthScafold(
          isLoading: false,
          currentStep: 4,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(Dimens.defaultMargin),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SvgPicture.asset('assets/images/location_permission.svg'),
                    const AddVerticalSpace(40),
                    Text(
                      'Turn on your location settings'.toUpperCase(),
                      style: Styles.kefa24Medium,
                      textAlign: TextAlign.center,
                    ),
                    const AddVerticalSpace(20),
                    Text(
                      'We won\'t share your exact location.',
                      style: Styles.kefa16Regular.copyWith(color: Colors.grey),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              CustomButton(
                margin: const EdgeInsets.symmetric(
                  horizontal: Dimens.defaultMargin,
                  vertical: Dimens.defaultMargin * 2,
                ),
                onPressed: () {
                  context.read<RegisterBloc>().add(
                        const RegisterEvent.setLocationPermission(),
                      );
                },
                label: 'TURN ON LOCATION',
              ),
            ],
          ),
        );
      },
    );
  }
}
