import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Constants/colors.dart';
import '../Constants/constants.dart';
import 'custom_images.dart';

class NotificationWidget extends StatelessWidget {
  const NotificationWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(
          onPressed: () {},
          icon: assetImage(AppIcons.alert, color: Colors.white),
        ),
        Positioned(
          top: 0,
          right: 0,
          child: CircleAvatar(
            radius: 10,
            backgroundColor: AppColors.red,
            child: Text(
              '23',
              style: Get.textTheme.bodyText2!.copyWith(
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    ).marginOnly(top: 10, right: 5);
  }
}

Widget bottomNavIcon(
    {String? icon,
    Color? color,
    IconData? icons,
    VoidCallback? onpressed,
    double? size}) {
  return IconButton(
    iconSize: 30,
    onPressed: onpressed ?? () {},
    icon: icons == null
        ? assetImage(
            icon!,
            color: color ?? AppColors.lightgreen,
            height: size,
          )
        : Icon(icons, color: color ?? AppColors.lightgreen),
  );
}

class NumericButton extends StatelessWidget {
  const NumericButton({
    Key? key,
    required this.title,
    this.ontap,
    this.width,
  }) : super(key: key);
  final String title;
  final VoidCallback? ontap;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap ?? () {},
      child: Container(
        width: width ?? 40,
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.only(right: 10),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          border: Border.all(),
          borderRadius: BorderRadius.circular(7),
        ),
        child: Text(title, style: Get.textTheme.bodyText1!),
      ),
    );
  }
}
