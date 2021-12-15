import 'package:crave_app/domain/core/theme/theme.dart';
import 'package:flutter/material.dart';

class CustomDialog extends StatelessWidget {
  final Color backgroundColor;
  final Widget content;
  final BorderRadius borderRadius;
  final Alignment alignment;
  final EdgeInsetsGeometry padding;
  final EdgeInsetsGeometry margin;

  const CustomDialog({
    Key? key,
    required this.content,
    this.backgroundColor = AppColors.mainColor,
    this.borderRadius =
        const BorderRadius.all(Radius.circular(Dimens.dialogBorderRadius)),
    this.alignment = Alignment.center,
    this.padding = const EdgeInsets.all(Dimens.dialogPadding),
    this.margin = const EdgeInsets.all(Dimens.dialogMargin),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => true,
      child: Align(
        alignment: alignment,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: borderRadius,
            color: backgroundColor,
          ),
          padding: padding,
          margin: margin,
          child: Material(
            color: Colors.transparent,
            child: content,
          ),
        ),
      ),
    );
  }
}
