import 'package:crave_app/domain/core/theme/theme.dart';
import 'package:crave_app/presentation/core/widget/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TopTabWidget extends StatelessWidget {
  final void Function()? onPressed;
  final int selectedIndex;
  final int index;
  final String title;
  const TopTabWidget({
    Key? key,
    this.onPressed,
    required this.index,
    required this.selectedIndex,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final selected = selectedIndex == index;
    return Expanded(
      child: CustomButton(
        height: 45.h,
        splashFactory: NoSplash.splashFactory,
        onPressed: onPressed,
        color: selected ? AppColors.mainColor : AppColors.greyBackground,
        fontStyle: Styles.sfProDisplay.copyWith(
          color: selected ? Colors.white : AppColors.mainColor,
        ),
        label: title,
      ),
    );
  }
}
