
import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:get/get.dart';
import 'package:three_screens/Constants/colors.dart';
import 'package:three_screens/Theme/input_decoration.dart';
import 'package:three_screens/Widgets/custom_images.dart';

import '../Constants/constants.dart';
import '../Widgets/app_widgets.dart';
import 'home_screen.dart';

class AuthScreen extends StatelessWidget {
  AuthScreen({Key? key}) : super(key: key);
  final RxInt language = 0.obs;
  final RxString countrycode = '+222'.obs;
  final TextEditingController phone = TextEditingController();
  final TextEditingController password = TextEditingController();
  final RxBool remember = true.obs;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        backgroundColor: AppColors.white,
        body: SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              SizedBox(height: height, width: width),
              Container(
                width: width,
                height: height * 0.35,
                color: AppColors.lightgrey,
                padding:
                    EdgeInsets.only(top: height * 0.03, left: 15, right: 15),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Row(
                        children: [
                          assetImage(AppIcons.internalization, height: 24)
                              .marginOnly(right: 7),
                          DropdownButton(
                            value: language.value,
                            items: internationlizationList
                                .map((e) => DropdownMenuItem(
                                      value: e.value,
                                      child: Text(e.title!),
                                    ))
                                .toList(),
                            onChanged: (val) {},
                            underline: const SizedBox.shrink(),
                            icon:
                                const Icon(Icons.keyboard_arrow_down_outlined),
                          ),
                        ],
                      ),
                    ).marginOnly(bottom: 20),
                    assetImage(AppIcons.header, height: height * 0.06),
                  ],
                ),
              ),
              Positioned(
                top: height * 0.22,
                child: SizedBox(
                  width: width,
                  child: assetImage(AppIcons.authentication),
                ),
              ),
              Container(
                color: AppColors.white,
                alignment: Alignment.center,
                margin: EdgeInsets.only(top: height * 0.31),
                padding: const EdgeInsets.only(
                    top: 70, bottom: 10, left: 25, right: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    TextFormField(
                      controller: phone,
                      style: inputStyle,
                      scrollPadding: EdgeInsets.zero,
                      keyboardType: TextInputType.number,
                      decoration: inputDecoration(
                        prefix: CountryCodePicker(
                          padding: EdgeInsets.zero,
                          initialSelection: countrycode.value,
                          onChanged: (val) => {
                            countrycode.value = val.dialCode!,
                            // phone.text = countrycode.value,
                          },
                        ),
                      ),
                    ).marginOnly(bottom: 15),
                    TextFormField(
                      obscureText: true,
                      controller: password,
                      style: inputStyle,
                      scrollPadding: EdgeInsets.zero,
                      keyboardType: TextInputType.number,
                      decoration: inputDecoration(
                        prefix: IconButton(
                          onPressed: () {},
                          icon: assetImage(AppIcons.lock,
                              color: Colors.black54, height: 25),
                        ),
                      ),
                    ).marginOnly(bottom: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        for (int i = 0; i < 6; i++)
                          NumericButton(title: numericButtons[i].title!),
                      ],
                    ).marginOnly(bottom: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        for (int i = 6; i < 11; i++)
                          NumericButton(
                            title: numericButtons[i].title!,
                            width: i != 10 ? null : 70,
                          ),
                      ],
                    ).marginOnly(bottom: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Remember me',
                          style: Get.textTheme.bodyText1!.copyWith(
                            fontSize: 16,
                          ),
                        ).marginOnly(right: width * 0.1),
                        FlutterSwitch(
                          height: 25,
                          width: 50,
                          value: remember.value,
                          onToggle: (val) => remember.value = val,
                          activeColor: AppColors.lightgreen,
                          padding: 4,
                        ),
                      ],
                    ).marginOnly(bottom: 40),
                    InkWell(
                      onTap: () => Get.offAll(() => HomeScreen()),
                      child: Container(
                        width: width,
                        height: 40,
                        alignment: Alignment.center,
                        padding: const EdgeInsets.all(10),
                        margin:
                            const EdgeInsets.only(left: 15, right: 15, top: 20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          gradient: const LinearGradient(
                            colors: [
                              AppColors.lightgreen,
                              AppColors.green1,
                              AppColors.darkgreen,
                            ],
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Sign in'.toUpperCase(),
                              style: Get.textTheme.bodyText1!.copyWith(
                                color: Colors.white,
                              ),
                            ).marginOnly(left: 5),
                            const Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.white,
                              size: 20,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: Container(
          padding: const EdgeInsets.only(left: 15, right: 15, bottom: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            mainAxisSize: MainAxisSize.min,
            children: [
              bottomNavIcon(icon: AppIcons.contact),
              bottomNavIcon(icon: AppIcons.forexIco),
              bottomNavIcon(icon: AppIcons.location),
            ],
          ),
        ),
      ),
    );
  }
}








