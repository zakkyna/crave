import 'package:crave_app/domain/core/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SettingItemWidget extends StatelessWidget {
  final String title;
  final void Function()? onTap;
  final Widget? trailing;
  const SettingItemWidget({
    Key? key,
    required this.title,
    this.onTap,
    this.trailing,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      contentPadding: EdgeInsets.symmetric(
        horizontal: 24.w,
        vertical: 8.h,
      ),
      title: Text(
        title,
        style: Styles.kefa18Regular.copyWith(
          color: AppColors.mainColor,
        ),
      ),
      trailing: trailing ??
          Icon(
            Icons.chevron_right,
            color: AppColors.mainColor,
            size: 24.sp,
          ),
    );
  }
}
