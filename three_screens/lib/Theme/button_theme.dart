import 'package:flutter/material.dart';

import '../Constants/colors.dart';

textButton() => TextButton.styleFrom();

outlineButton({
  Color? primary = AppColors.green4,
  Color? surface = AppColors.white,
  Color? borderColor = AppColors.green4,
  double? radius = 10.0,
  double? elevation,
  double width = 1.0,
}) {
  return OutlinedButton.styleFrom(
    primary: primary,
    elevation: elevation,
    onSurface: surface,
    shadowColor: AppColors.transparent,
    side: BorderSide(color: borderColor!, width: width),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(radius!)),
  );
}

elevatedButton({
  Color? primary = AppColors.green4,
  Color? surface = AppColors.white,
  Color? borderColor = AppColors.green4,
  Color onPrimary = AppColors.white,
  double? radius = 10.0,
  Color? shadowColor,
  double? elevation,
}) {
  return ElevatedButton.styleFrom(
    primary: primary,
    onSurface: surface,
    onPrimary: onPrimary,
    elevation: elevation,
    shadowColor: shadowColor,
    side: BorderSide(color: borderColor!),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(radius!)),
  );
}
