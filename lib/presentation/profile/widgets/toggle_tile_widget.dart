import 'package:crave_app/domain/core/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ToggleTileWidget extends StatelessWidget {
  final String title;
  final bool value;
  final void Function(bool)? onChanged;
  final EdgeInsetsGeometry padding;
  const ToggleTileWidget({
    Key? key,
    required this.value,
    required this.title,
    this.onChanged,
    this.padding = const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SwitchListTile(
      contentPadding: padding,
      activeColor: AppColors.mainColor,
      onChanged: onChanged,
      value: value,
      title: Text(
        title,
        style: Styles.kefa16Regular.copyWith(
          color: AppColors.mainColor,
        ),
      ),
    );
  }
}
