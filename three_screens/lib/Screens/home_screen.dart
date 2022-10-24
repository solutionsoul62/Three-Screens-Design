import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Constants/colors.dart';
import '../Constants/constants.dart';
import '../Models/app_models.dart';
import '../Widgets/app_widgets.dart';
import '../Widgets/custom_images.dart';
import 'forex_screen.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  final RxBool view = false.obs;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {},
            padding: EdgeInsets.zero,
            icon: assetImage(
              AppIcons.menu,
              color: Colors.white,
              width: 30,
            ),
          ),
          title: Text(
            'Dashboard',
            style: Get.textTheme.bodyText1!.copyWith(
              fontSize: 17,
              color: Colors.white,
            ),
          ),
          actions: const [NotificationWidget()],
        ),
        bottomNavigationBar: Container(
          padding:
              const EdgeInsets.only(left: 15, right: 15, bottom: 5, top: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.min,
            children: [
              bottomNavIcon(
                icon: AppIcons.settings,
                color: AppColors.darkgreen,
                size: 25,
              ),
              bottomNavIcon(
                icon: AppIcons.news,
                color: AppColors.darkgreen,
                size: 25,
              ),
              bottomNavIcon(
                icon: AppIcons.location,
                color: AppColors.darkgreen,
                size: 25,
              ),
              bottomNavIcon(
                icon: AppIcons.forexIco,
                color: AppColors.darkgreen,
                size: 25,
                onpressed: () => Get.to(() => const ForexScreen()),
              ),
              bottomNavIcon(
                icon: AppIcons.headphone,
                color: AppColors.darkgreen,
                size: 25,
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          padding:
              const EdgeInsets.only(left: 25, right: 25, top: 20, bottom: 10),
          child: Column(
            children: [
              Container(
                height: height * 0.235,
                width: width,
                margin: const EdgeInsets.only(bottom: 20),
                padding: const EdgeInsets.only(
                  top: 50,
                  left: 15,
                  right: 15,
                  bottom: 10,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: decorationImage(AppIcons.merchantcardbg),
                  ),
                ),
                child: Column(
                  children: [
                    Text(
                      'WALLET',
                      style: Get.textTheme.bodyText1!.copyWith(
                        color: Colors.white,
                      ),
                    ).marginOnly(bottom: 10),
                    Text(
                      '3487924639421616',
                      style: Get.textTheme.bodyText1!.copyWith(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                    Row(
                      children: [
                        IconButton(
                          onPressed: () => view.value = !view.value,
                          icon: Icon(
                            view.value
                                ? Icons.visibility_rounded
                                : Icons.visibility_off,
                            color: Colors.white,
                          ),
                        ),
                        RichText(
                          text: TextSpan(
                            text:
                                !view.value ? '*************' : '348792463942',
                            style: Get.textTheme.bodyText1!.copyWith(
                              color: Colors.white,
                              fontSize: 15,
                            ),
                            children: const [TextSpan(text: ' MRU')],
                          ),
                        ).marginOnly(left: width * 0.1),
                      ],
                    ),
                  ],
                ),
              ),
              GridView.builder(
                shrinkWrap: true,
                itemCount: dashboard.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  childAspectRatio: 0.89,
                  crossAxisSpacing: 5,
                  mainAxisSpacing: 5,
                ),
                itemBuilder: (context, index) {
                  final AppModels element = dashboard[index];
                  return InkWell(
                    onTap: element.ontap ?? () {},
                    child: Card(
                      elevation: 5.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          assetImage(
                            element.image!,
                            color: AppColors.lightgreen,
                            height: height * 0.06,
                          ).marginOnly(),
                          Text(
                            element.title!,
                            style: Get.textTheme.bodyText1!,
                            textAlign: TextAlign.center,
                            maxLines: 2,
                          ),
                        ],
                      ).marginOnly(top: 15, left: 10, right: 10, bottom: 10),
                    ),
                  );
                },
              ).marginOnly(bottom: 20),
            ],
          ),
        ),
      ),
    );
  }
}