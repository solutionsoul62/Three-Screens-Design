import 'package:flutter/cupertino.dart';

class AppModels {
  String? title, image, subtitle;
  int? value;
  VoidCallback? ontap;
  double? buy, sell;

  AppModels({
    this.title,
    this.value,
    this.ontap,
    this.image,
    this.subtitle,
    this.buy,
    this.sell,
  });
}
