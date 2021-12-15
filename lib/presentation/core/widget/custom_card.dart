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

  const CustomCard({
    Key? key,
    this.padding = const EdgeInsets.all(Dimens.defaulCardPadding),
    this.margin = const EdgeInsets.symmetric(horizontal: Dimens.defaultMargin),
    this.child = const SizedBox(width: double.infinity),
    this.color = Colors.white,
    this.shadowColor = AppColors.shadowColor,
    this.spreadRadius = 8,
    this.blurRadius = 15,
    this.offset = const Offset(0, 4),
    this.borderRadius = const BorderRadius.all(
      Radius.circular(10),
    ),
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin,
      child: Material(
        color: Colors.transparent,
        child: Ink(
          decoration: BoxDecoration(
            color: color,
            borderRadius: borderRadius,
            boxShadow: [
              BoxShadow(
                color: shadowColor.withOpacity(0.2),
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
