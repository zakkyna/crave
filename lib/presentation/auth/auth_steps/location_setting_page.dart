import 'package:crave_app/domain/core/theme/theme.dart';
import 'package:crave_app/presentation/core/widget/custom_button.dart';
import 'package:crave_app/presentation/core/widget/spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LocationSettingPage extends StatelessWidget {
  final Function onNext;

  const LocationSettingPage({
    Key? key,
    required this.onNext,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
            onNext();
          },
          label: 'TURN ON LOCATION',
        )
      ],
    );
  }
}
