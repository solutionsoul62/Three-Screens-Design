import 'package:flutter/material.dart';

import '../Constants/colors.dart';

TextStyle inputStyle = const TextStyle(
  color: AppColors.black,
  fontWeight: FontWeight.normal,
  fontSize: 15,
);

InputDecoration inputDecoration({
  Widget? icon,
  String? helper,
  String? hint,
  String? error,
  String? label,
  Widget? suffix,
  Widget? prefix,
  Color? filledColor,
  InputBorder? border,
  InputBorder? errorBorder,
  InputBorder? focusBorder,
  bool? filled = false,
  double radius = 4,
  bool? dense = true,
  double hintSize = 12,
  Color? errorColor = AppColors.red,
  Color? hintColor = AppColors.grey,
  Color? focusColor = AppColors.grey,
  Color? labelColor = AppColors.grey,
  Color? helperColor = AppColors.grey,
  Color? borderColor = AppColors.grey,
}) {
  return InputDecoration(
    icon: icon,
    isDense: dense,
    filled: filled,
    fillColor: filledColor,
    helperText: helper,
    errorText: error,
    labelText: label,
    hintText: hint,
    suffixIcon: suffix,
    prefixIcon: prefix,
    contentPadding:const  EdgeInsets.only(bottom: 0, top: 20),
    helperStyle: TextStyle(
      color: helperColor,
      fontSize: hintSize,
      fontWeight: FontWeight.normal,
    ),
    errorStyle: TextStyle(
      color: errorColor,
      fontSize: hintSize,
      fontWeight: FontWeight.normal,
    ),
    labelStyle: TextStyle(
      color: labelColor,
      fontSize: hintSize,
      fontWeight: FontWeight.normal,
    ),
    hintStyle: TextStyle(
      color: hintColor,
      fontSize: hintSize,
      fontWeight: FontWeight.normal,
    ),
    border: border ??
        UnderlineInputBorder(borderSide: BorderSide(color: borderColor!)),
    enabledBorder: border ??
        UnderlineInputBorder(borderSide: BorderSide(color: borderColor!)),
    focusedBorder: focusBorder ??
        UnderlineInputBorder(borderSide: BorderSide(color: focusColor!)),
    errorBorder: errorBorder ??
        UnderlineInputBorder(borderSide: BorderSide(color: errorColor!)),
    focusedErrorBorder: errorBorder ??
        UnderlineInputBorder(borderSide: BorderSide(color: errorColor!)),
    disabledBorder: border ??
        UnderlineInputBorder(borderSide: BorderSide(color: borderColor!)),
  );
}
