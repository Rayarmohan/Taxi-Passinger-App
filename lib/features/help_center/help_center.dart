// ignore_for_file: library_private_types_in_public_api, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:taxi_passenger_app/features/help_center/help_center_controller.dart';
import 'package:taxi_passenger_app/features/help_center/textfield.dart';
import 'package:taxi_passenger_app/utils/color/app_colors.dart';
import 'package:taxi_passenger_app/widgets/custom_app_bar.dart';
import 'package:taxi_passenger_app/widgets/custom_images.dart';
import 'package:taxi_passenger_app/widgets/custom_text_field.dart';

class HelpCenter extends StatefulWidget {
  const HelpCenter({super.key});

  @override
  _HelpCenterState createState() => _HelpCenterState();
}

class _HelpCenterState extends State<HelpCenter> {
  final HelpCenterController controller = HelpCenterController();
  bool _isWhatsAppInfoVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(
        title: Text('Help Center',
            style: Theme.of(context)
                .textTheme
                .headlineMedium!
                .copyWith(height: 1.7, color: AppColors.primeryColor)),
        leading: Padding(
          padding: EdgeInsets.all(8.0),
          child: InkWell(
            onTap: () {
              Get.back();
            },
            child: CustomPngImage(
              imageName: "assets/images/arrow_back.png",
              height: 30,
              width: 30,
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 40, 20, 0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                HelpTextField(
                  controller: controller.helpController,
                  hint: "Search",
                  suffixIcon:
                      Padding(
                        padding: const EdgeInsets.all(14.0),
                        child: CustomPngImage(
                          imageName: "assets/images/search_icon_1.png",
                          height: 10,
                          width: 0,
                        ),
                      ),
                ),
                const SizedBox(height: 30),
                const Text(
                  "FAQ",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: AppColors.primeryColor,
                  ),
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 2),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 50,
                        width: 500,
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 1,
                            color: Color.fromRGBO(241, 241, 241, 1),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Customer Service",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                      height: 1.7,
                                      color: AppColors.primeryColor,
                                      fontWeight: FontWeight.w500),
                            ),
                            const Icon(
                              Icons.arrow_forward_ios,
                              color: AppColors.primeryColor,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 2),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            _isWhatsAppInfoVisible = !_isWhatsAppInfoVisible;
                          });
                        },
                        child: Container(
                          height: 50,
                          width: 500,
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: 1,
                              color: Color.fromRGBO(241, 241, 241, 1),
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "WhatsApp",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(
                                        height: 1.7,
                                        color: AppColors.primeryColor,
                                        fontWeight: FontWeight.w500),
                              ),
                              Icon(
                                _isWhatsAppInfoVisible
                                    ? Icons.keyboard_arrow_down_outlined
                                    : Icons.arrow_forward_ios,
                                color: AppColors.primeryColor,
                              ),
                            ],
                          ),
                        ),
                      ),
                      if (_isWhatsAppInfoVisible) _buildWhatsAppInfoContainer(),
                    ],
                  ),
                ),
                const SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 2),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 50,
                        width: 500,
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 1,
                            color: Color.fromRGBO(241, 241, 241, 1),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Website",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                      height: 1.7,
                                      color: AppColors.primeryColor,
                                      fontWeight: FontWeight.w500),
                            ),
                            const Icon(
                              Icons.arrow_forward_ios,
                              color: AppColors.primeryColor,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 2),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 50,
                        width: 500,
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 1,
                            color: Color.fromRGBO(241, 241, 241, 1),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Facebook",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                      height: 1.7,
                                      color: AppColors.primeryColor,
                                      fontWeight: FontWeight.w500),
                            ),
                            const Icon(
                              Icons.arrow_forward_ios,
                              color: AppColors.primeryColor,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 2),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 50,
                        width: 500,
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 1,
                            color: Color.fromRGBO(241, 241, 241, 1),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Instagram",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                      height: 1.7,
                                      color: AppColors.primeryColor,
                                      fontWeight: FontWeight.w500),
                            ),
                            const Icon(
                              Icons.arrow_forward_ios,
                              color: AppColors.primeryColor,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildWhatsAppInfoContainer() {
    return Container(
      width: 500,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(width: 1, color: Color.fromRGBO(241, 241, 241, 1)),
      ),
      child: Row(
        children: [
          Icon(
            Icons.circle,
            size: 10,
            color: AppColors.primeryColor,
          ),
          SizedBox(
            width: 5,
          ),
          const Text(
            "(+234) 8946788",
            style: TextStyle(
              fontSize: 14,
              color: AppColors.primeryColor,
            ),
          ),
        ],
      ),
    );
  }
}
