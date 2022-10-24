import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:three_screens/Screens/auth_screen.dart';
import 'package:three_screens/Widgets/custom_images.dart';

import '../Constants/constants.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(
      const Duration(milliseconds: 1000),
      () => Get.offAll(() => AuthScreen()),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: assetImage(AppIcons.logo),
      ),
    );
  }
}
