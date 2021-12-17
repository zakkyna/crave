import 'package:crave_app/domain/core/theme/theme.dart';
import 'package:crave_app/presentation/core/widget/custom_card.dart';
import 'package:crave_app/presentation/core/widget/spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class GenderWidget extends StatelessWidget {
  final int id;
  final void Function()? onTap;
  final String asset;
  final String title;
  final bool isSelected;
  const GenderWidget({
    Key? key,
    required this.id,
    this.onTap,
    required this.asset,
    required this.title,
    required this.isSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      onTap: onTap,
      borderRadius: BorderRadius.circular(Dimens.defaultBorderRadius),
      width: 160.w,
      height: 180.h,
      border: isSelected
          ? Border.all(color: AppColors.mainColor, width: 2.w)
          : null,
      padding: EdgeInsets.all(30.w),
      margin: const EdgeInsets.all(15),
      child: Column(
        children: [
          SvgPicture.asset(asset, width: 50.w, height: 50.h),
          addVerticalSpace(18),
          Text(
            title,
            style: Styles.kefa18Medium,
          )
        ],
      ),
    );
  }
}
