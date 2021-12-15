import 'package:flutter/material.dart';
import 'package:crave_app/domain/core/theme/theme.dart';

class CustomChips extends StatelessWidget {
  final String label;
  final Color selectedColor;

  final void Function()? onPressed;
  final void Function()? onDelete;
  final dynamic valueChips;
  final EdgeInsetsGeometry padding;
  final EdgeInsetsGeometry margin;

  const CustomChips({
    Key? key,
    this.label = '',
    this.onDelete,
    this.onPressed,
    this.selectedColor = const Color(0xff716661),
    this.valueChips = 0,
    this.padding = const EdgeInsets.all(5.0),
    this.margin = const EdgeInsets.only(right: 10),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin,
      child: InputChip(
        labelStyle: Styles.mediumStyle.copyWith(
          color: valueChips != 0 ? Colors.white : Colors.black,
        ),
        labelPadding: const EdgeInsets.symmetric(vertical: 2, horizontal: 5),
        label: Text(
          label,
        ),
        padding: padding,
        backgroundColor:
            valueChips != 0 ? selectedColor : AppColors.buttonDisabled,
        onPressed: onPressed,
        onDeleted: onDelete != null && valueChips != 0 ? onDelete : null,
        deleteIcon: const Icon(Icons.close_rounded),
        deleteIconColor: Colors.white,
      ),
    );
  }
}
