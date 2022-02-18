import 'package:crave_app/domain/core/theme/theme.dart';
import 'package:crave_app/domain/intro/entity/intro.dart';
import 'package:crave_app/presentation/core/widget/spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class IntroWidget extends StatelessWidget {
  final Intro intro;
  const IntroWidget({
    Key? key,
    required this.intro,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(Dimens.defaultMargin),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          SvgPicture.asset(intro.asset),
          AddVerticalSpace(50),
          Text(
            intro.title,
            style: Styles.kefa24Regular,
            textAlign: TextAlign.center,
          ),
          AddVerticalSpace(20),
          Text(
            intro.description,
            style: Styles.kefa16Light
                .copyWith(color: AppColors.mainColor.withOpacity(0.7)),
            textAlign: TextAlign.center,
          ),
          AddVerticalSpace(50),
        ],
      ),
    );
  }
}
