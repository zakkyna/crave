import 'package:flutter/material.dart';
import 'package:crave_app/domain/core/theme/theme.dart';

class CustomCard extends StatelessWidget {
  final EdgeInsetsGeometry padding;
  final EdgeInsetsGeometry margin;
  final Widget child;
  final Color color;
  final Color shadowColor;
  final double spreadRadius;
  final double blurRadius;
  final Offset offset;
  final BorderRadius borderRadius;
  final void Function()? onTap;
  final double width;
  final double height;
  final BoxBorder? border;

  const CustomCard({
    Key? key,
    this.padding = const EdgeInsets.all(Dimens.defaulCardPadding),
    this.margin = const EdgeInsets.symmetric(horizontal: Dimens.defaultMargin),
    this.child = const SizedBox(width: double.infinity),
    this.color = Colors.white,
    this.shadowColor = AppColors.shadowColor,
    this.spreadRadius = 4,
    this.blurRadius = 12,
    this.offset = const Offset(0, 4),
    this.borderRadius = const BorderRadius.all(
      Radius.circular(10),
    ),
    this.width = double.infinity,
    this.height = double.infinity,
    this.onTap,
    this.border,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      borderRadius: borderRadius,
      child: Container(
        padding: margin,
        width: width,
        height: height,
        child: Ink(
          decoration: BoxDecoration(
            color: color,
            borderRadius: borderRadius,
            border: border,
            boxShadow: [
              BoxShadow(
                color: shadowColor.withOpacity(0.1),
                spreadRadius: spreadRadius,
                blurRadius: blurRadius,
                offset: offset,
              ),
            ],
          ),
          child: InkWell(
            borderRadius: borderRadius,
            onTap: onTap,
            child: Padding(
              padding: padding,
              child: child,
            ),
          ),
        ),
      ),
    );
  }
}
