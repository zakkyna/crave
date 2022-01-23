import 'package:crave_app/application/auth/register/register_bloc.dart';
import 'package:crave_app/domain/core/theme/theme.dart';
import 'package:crave_app/presentation/core/widget/custom_button.dart';
import 'package:crave_app/presentation/core/widget/spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LocationSettingPage extends StatelessWidget {
  final Function onNext;
  final bool isInPage;

  const LocationSettingPage({
    Key? key,
    required this.onNext,
    required this.isInPage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (context.read<RegisterBloc>().state.locationPermissionAllowed &&
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
              SvgPicture.asset('assets/images/location_permission.svg'),
              addVerticalSpace(40),
              Text(
                'Turn on your location settings'.toUpperCase(),
                style: Styles.kefa24Medium,
                textAlign: TextAlign.center,
              ),
              addVerticalSpace(20),
              Text(
                'No location - no exciting adventures',
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
    );
  }
}
