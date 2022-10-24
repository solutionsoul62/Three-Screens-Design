import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../Constants/colors.dart';
import '../Constants/constants.dart';
import '../Models/app_models.dart';
import '../Widgets/app_widgets.dart';

class ForexScreen extends StatelessWidget {
  const ForexScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          padding: EdgeInsets.zero,
          onPressed: () => Get.back(),
          icon: const Icon(Icons.arrow_back_ios),
        ),
        title: Text(
          'Forex Rate',
          style: Get.textTheme.bodyText1!.copyWith(color: Colors.white),
        ),
        actions: const [NotificationWidget()],
      ),
      body: SingleChildScrollView(
        padding:
            const EdgeInsets.only(top: 50, bottom: 10, left: 10, right: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Text(
                DateFormat('EEEE  dd MMMM yyyy').format(DateTime.now()),
                style: Get.textTheme.bodyText1!.copyWith(fontSize: 19),
                textAlign: TextAlign.center,
              ).marginOnly(bottom: 15),
            ),
            Center(
              child: Text(
                'Reference Currency: MRU',
                style: Get.textTheme.bodyText1!.copyWith(fontSize: 15),
                textAlign: TextAlign.center,
              ).marginOnly(bottom: 30),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: width * 0.8,
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.centerRight,
                        child: SizedBox(
                          width: width * 0.1,
                          child: Text(
                            'Buy',
                            style: Get.textTheme.bodyText1!.copyWith(
                              color: AppColors.green3,
                            ),
                          ),
                        ),
                      ),
                      Column(
                        children: List.generate(
                          forexList.length,
                          (index) {
                            final AppModels forex = forexList[index];
                            return SizedBox(
                              height: 50,
                              child: Row(
                                children: [
                                  CountryCodePicker(
                                    enabled: false,
                                    initialSelection: forex.image!,
                                  ),
                                  Text(
                                    '(${forex.subtitle})',
                                    style: Get.textTheme.bodyText1!,
                                  ).marginOnly(right: 10),
                                  SizedBox(
                                    width: width * 0.38,
                                    child: Text(
                                      forex.title!.capitalize!,
                                      style: Get.textTheme.bodyText1!,
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                  SizedBox(
                                    width: width * 0.1,
                                    child: Text(
                                      forex.buy!.toStringAsFixed(2),
                                      textAlign: TextAlign.end,
                                      style: Get.textTheme.bodyText1!,
                                    ),
                                  ),
                                ],
                              ).marginOnly(bottom: 0),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: height, child: const VerticalDivider()),
                SizedBox(
                  width: width * 0.1,
                  child: Column(
                    children: [
                      Text(
                        'Sell',
                        style: Get.textTheme.bodyText1!.copyWith(
                          color: AppColors.green3,
                        ),
                      ),
                      Column(
                        children: List.generate(
                          forexList.length,
                          (index) {
                            final AppModels forex = forexList[index];
                            return Row(
                              children: [
                                Container(
                                  height: 50,
                                  width: width * 0.1,
                                  padding: const EdgeInsets.only(top: 17),
                                  child: Text(
                                    forex.sell!.toStringAsFixed(2),
                                    textAlign: TextAlign.end,
                                    style: Get.textTheme.bodyText1!,
                                  ),
                                ),
                              ],
                            ).marginOnly(bottom: 0);
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
