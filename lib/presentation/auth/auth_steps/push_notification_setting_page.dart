import 'package:crave_app/application/auth/register/register_bloc.dart';
import 'package:crave_app/domain/core/theme/theme.dart';
import 'package:crave_app/presentation/auth/widgets/auth_scafold.dart';
import 'package:crave_app/presentation/core/widget/custom_button.dart';
import 'package:crave_app/presentation/core/widget/spacing.dart';
import 'package:crave_app/presentation/routers/routers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class PushNotificationSettingPage extends StatelessWidget {
  const PushNotificationSettingPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _registerBloc = context.read<RegisterBloc>();
    if (_registerBloc.state.locationPermissionAllowed) {
      WidgetsBinding.instance!.addPostFrameCallback((timeStamp) {
        if (_registerBloc.state.genderId.isSome()) {
          _registerBloc.add(
            const RegisterEvent.registerSubmitted(),
          );
        } else {
          Get.toNamed(Routers.main);
        }
      });
    }
    return BlocConsumer<RegisterBloc, RegisterState>(
      listener: (context, state) {
        if (state.locationPermissionAllowed &&
            state.registerFailureOrSuccess.isNone()) {
          if (_registerBloc.state.genderId.isSome()) {
            _registerBloc.add(
              const RegisterEvent.registerSubmitted(),
            );
          } else {
            Get.toNamed(Routers.main);
          }
        } else {
          state.registerFailureOrSuccess.match(
            (failureOrSuccess) {
              failureOrSuccess.match(
                (failure) {
                  final message = failure.map(
                    noInternet: (_) => 'No internet',
                    unexpected: (_) => 'Unexpected error',
                    serverError: (e) => e.message,
                    cancelledByUser: (_) => 'Cancelled',
                    emailAlreadyInUse: (_) => 'Email already in use',
                    expiredCredential: (_) => 'Expired credential',
                    invalidOtpCode: (_) => 'Invalid OTP code',
                    invalidEmailAndPasswordCombination: (value) =>
                        'Invalid email and password combination',
                  );
                  Get.snackbar(
                    'Sorry',
                    message,
                  );
                },
                (r) => Get.offAllNamed(
                  Routers.main,
                ),
              );
            },
            () {},
          );
        }
      },
      builder: (context, state) {
        return AuthScafold(
          isLoading: false,
          currentStep: 5,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(Dimens.defaultMargin),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const AddVerticalSpace(40),
                    SvgPicture.asset('assets/images/push_notif_permission.svg'),
                    const AddVerticalSpace(40),
                    Text(
                      'Turn on your Push-notifications'.toUpperCase(),
                      style: Styles.kefa24Medium,
                      textAlign: TextAlign.center,
                    ),
                    const AddVerticalSpace(20),
                    Text(
                      '24 Hours. That\'s how long you\'ve got to match. \n Make it count!',
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
                  context
                      .read<RegisterBloc>()
                      .add(const RegisterEvent.setNotificationPermission());
                },
                label: 'TURN ON PUSH-NOTIFICATIONS',
              ),
            ],
          ),
        );
      },
    );
  }
}
