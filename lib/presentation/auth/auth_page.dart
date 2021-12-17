import 'dart:async';

import 'package:crave_app/domain/core/theme/theme.dart';
import 'package:crave_app/presentation/auth/auth_steps/input_number_page.dart';
import 'package:crave_app/presentation/auth/auth_steps/location_setting_page.dart';
import 'package:crave_app/presentation/auth/auth_steps/push_notification_setting_page.dart';
import 'package:crave_app/presentation/auth/auth_steps/select_gender_page.dart';
import 'package:crave_app/presentation/auth/auth_steps/verify_otp_page.dart';
import 'package:crave_app/presentation/core/widget/custom_stepper.dart';
import 'package:crave_app/presentation/routers/routers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class AuthPage extends HookWidget {
  const AuthPage({Key? key}) : super(key: key);

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
    final pageController = PageController();
    final page = useState(0);
    pageController.addListener(() {
      page.value = pageController.page?.round() ?? 0;
      print('pageController.page?.round() ${pageController.page?.round()}');
    });

    onNext() => pageController.nextPage(
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeOut,
        );

    final listPage = <Widget>[
      InputNumberPage(onNext: onNext),
      VerifyOtpPage(onNext: onNext),
      SelectGenderPage(onNext: onNext),
      LocationSettingPage(onNext: onNext),
      PushNotificationSettingPage(
        onNext: () => Get.toNamed(
          Routers.buySubscription,
        ),
      ),
    ];

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(Dimens.defaultMargin),
                    child: SvgPicture.asset('assets/images/crave_logo.svg'),
                  ),
                ),
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(Dimens.defaultMargin),
                  child: CustomStepper(
                    currentStep: page.value + 1,
                    totalSteps: listPage.length,
                  ),
                ),
              ],
            ),
            Expanded(
              child: PageView(
                physics: const NeverScrollableScrollPhysics(),
                controller: pageController,
                children: listPage,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
