import 'package:crave_app/application/auth/login/login_bloc.dart';
import 'package:crave_app/application/auth/register/register_bloc.dart';
import 'package:crave_app/domain/core/theme/theme.dart';
import 'package:crave_app/presentation/auth/auth_steps/location_setting_page.dart';
import 'package:crave_app/presentation/auth/auth_steps/push_notification_setting_page.dart';
import 'package:crave_app/presentation/auth/auth_steps/select_gender_page.dart';
import 'package:crave_app/presentation/auth/widgets/auth_scafold.dart';
import 'package:crave_app/presentation/core/widget/spacing.dart';
import 'package:crave_app/presentation/routers/routers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_multi_formatter/flutter_multi_formatter.dart';
import 'package:get/get.dart';

class VerifyOtpPage extends HookWidget {
  const VerifyOtpPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _loginBloc = context.read<LoginBloc>();
    final _registerBloc = context.read<RegisterBloc>();
    final textEditingController = useTextEditingController();
    final focusNode = useFocusNode();
    focusNode.requestFocus();
    textEditingController.addListener(() {
      _loginBloc.add(LoginEvent.otpChanged(textEditingController.text));
      if (textEditingController.text.length == 7 &&
          _loginBloc.state.otpFailureOrSuccessOption.isNone()) {
        _loginBloc.add(const LoginEvent.otpSubmitted());
      }
    });
    return BlocConsumer<LoginBloc, LoginState>(
      listener: (context, state) {
        state.otpFailureOrSuccessOption.match(
          (failureOrSuccess) {
            failureOrSuccess.fold(
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
              (user) {
                focusNode.unfocus();
                if (user.isNewUser) {
                  Get.to(() => const SelectGenderPage());
                  return;
                } else if (!_registerBloc.state.locationPermissionAllowed) {
                  Get.to(() => const LocationSettingPage());
                  return;
                } else if (!_registerBloc.state.notificationPermissionAllowed) {
                  Get.to(() => const PushNotificationSettingPage());
                  return;
                } else {
                  Get.offAllNamed(Routers.main);
                }
              },
            );
          },
          () {},
        );
      },
      builder: (context, state) => AuthScafold(
        isLoading: state.isSubmitting,
        currentStep: 2,
        body: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AddVerticalSpace(Dimens.defaultMargin),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: Dimens.defaultMargin),
              child: Text(
                'Your verification code from phone number',
                style: Styles.kefa18Medium,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(Dimens.defaultMargin),
              child: TextFormField(
                focusNode: focusNode,
                autofocus: true,
                controller: textEditingController,
                style: Styles.kefa24Medium,
                keyboardType: TextInputType.number,
                inputFormatters: <TextInputFormatter>[
                  MaskedInputFormatter(
                    '### ###',
                  )
                ],
                decoration: const InputDecoration(
                  hintText: 'ENTER CODE',
                  border: InputBorder.none,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
