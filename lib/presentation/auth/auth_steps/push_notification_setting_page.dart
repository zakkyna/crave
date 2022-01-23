import 'package:crave_app/application/auth/register/register_bloc.dart';
import 'package:crave_app/domain/core/theme/theme.dart';
import 'package:crave_app/presentation/core/widget/custom_button.dart';
import 'package:crave_app/presentation/core/widget/spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

class PushNotificationSettingPage extends StatelessWidget {
  final Function onNext;
  final bool isInPage;

  const PushNotificationSettingPage({
    Key? key,
    required this.onNext,
    required this.isInPage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (context.read<RegisterBloc>().state.notificationPermissionAllowed &&
        isInPage) {
      WidgetsBinding.instance!.addPostFrameCallback((timeStamp) {
        onNext();
      });
    }
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.all(Dimens.defaultMargin),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              addVerticalSpace(40),
              SvgPicture.asset('assets/images/push_notif_permission.svg'),
              addVerticalSpace(40),
              Text(
                'Turn on your Push-notifications'.toUpperCase(),
                style: Styles.kefa24Medium,
                textAlign: TextAlign.center,
              ),
              addVerticalSpace(20),
              Text(
                'Time is short. You must respond quickly',
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
    );
  }
}
