import 'package:crave_app/domain/core/theme/theme.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextField extends StatelessWidget {
  final bool border;
  final TextEditingController? controller;
  final AutovalidateMode? autovalidateMode;
  final String? Function(String?)? validator;
  final String hintText;
  final TextStyle? hintStyle;
  final TextStyle? inputStyle;
  final Color focusedBorderColor;
  final Color? borderColor;
  final Color? fillColor;
  final TextInputType? keyboardType;
  final Widget? prefix;
  final bool? enabled;
  final int? minLines;
  final int maxLines;
  final Function(String)? onChange;
  final List<TextInputFormatter>? inputFormatters;
  final bool obscureText;
  final Widget? suffixIcon;
  final Function(String)? onFieldSubmitted;
  final int? maxLength;
  final FocusNode? focusNode;
  final EdgeInsetsGeometry? contentPadding;
  const CustomTextField({
    Key? key,
    this.border = true,
    this.controller,
    this.autovalidateMode,
    this.prefix,
    this.validator,
    this.hintText = '',
    this.hintStyle,
    this.inputStyle,
    this.focusedBorderColor = AppColors.inputFocusedBorder,
    this.keyboardType,
    this.onChange,
    this.inputFormatters,
    this.fillColor = Colors.white,
    this.borderColor,
    this.enabled,
    this.minLines,
    this.maxLines = 1,
    this.obscureText = false,
    this.suffixIcon,
    this.onFieldSubmitted,
    this.maxLength,
    this.focusNode,
    this.contentPadding =
        const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      focusNode: focusNode,
      maxLength: maxLength,
      onFieldSubmitted: onFieldSubmitted,
      obscureText: obscureText,
      enabled: enabled,
      inputFormatters: inputFormatters,
      autovalidateMode: autovalidateMode,
      onChanged: onChange,
      controller: controller,
      minLines: minLines,
      maxLines: maxLines,
      style: inputStyle ?? Styles.inputStyle,
      decoration: InputDecoration(
        prefixIcon: prefix,
        contentPadding: contentPadding,
        focusedBorder: border == true
            ? OutlineInputBorder(
                borderRadius: const BorderRadius.all(Radius.circular(10)),
                borderSide: BorderSide(color: focusedBorderColor, width: 1),
              )
            : null,
        enabledBorder: border == true
            ? OutlineInputBorder(
                borderRadius: const BorderRadius.all(Radius.circular(10)),
                borderSide: BorderSide(
                    color: borderColor ?? AppColors.inputEnabledBorder,
                    width: 1),
              )
            : null,
        errorBorder: border == true
            ? const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                borderSide: BorderSide(color: Colors.red, width: 1),
              )
            : null,
        border: border == true
            ? OutlineInputBorder(
                borderRadius: const BorderRadius.all(Radius.circular(10)),
                borderSide: BorderSide(color: focusedBorderColor, width: 1),
              )
            : null,
        errorStyle: Styles.inputErrorStyle,
        hintText: hintText,
        hintStyle: hintStyle ?? Styles.inputHintStyle,
        fillColor: fillColor,
        filled: true,
        suffixIcon: suffixIcon,
      ),
      keyboardType: keyboardType,
      autocorrect: false,
      validator: validator,
    );
  }
}
