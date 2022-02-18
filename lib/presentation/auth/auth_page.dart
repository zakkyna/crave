import 'package:crave_app/application/auth/register/register_bloc.dart';
import 'package:crave_app/presentation/auth/auth_steps/input_number_page.dart';
import 'package:crave_app/presentation/auth/auth_steps/location_setting_page.dart';
import 'package:crave_app/presentation/auth/auth_steps/push_notification_setting_page.dart';
import 'package:crave_app/presentation/auth/auth_steps/select_gender_page.dart';
import 'package:crave_app/presentation/auth/auth_steps/verify_otp_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthPage extends StatelessWidget {
  final int pageIndex;
  const AuthPage({
    Key? key,
    required this.pageIndex,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const page = [
      InputNumberPage(),
      VerifyOtpPage(),
      SelectGenderPage(),
      LocationSettingPage(),
      PushNotificationSettingPage(),
    ];
    context.read<RegisterBloc>().add(const RegisterEvent.init());
    WidgetsBinding.instance!.addPostFrameCallback((timeStamp) {
      Get.off(page[pageIndex]);
    });
    return const Scaffold();
  }
}
