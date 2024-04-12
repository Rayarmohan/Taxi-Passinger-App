// ignore_for_file: non_constant_identifier_names, unnecessary_import

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:taxi_passenger_app/utils/color/app_colors.dart';
import 'package:taxi_passenger_app/widgets/custom_app_bar.dart';
import 'package:taxi_passenger_app/widgets/custom_button.dart';
import 'package:taxi_passenger_app/widgets/custom_images.dart';

class SosScreen extends StatelessWidget {
  const SosScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(
        title: Text('SOS',
            style: Theme.of(context)
                .textTheme
                .headlineMedium!
                .copyWith(height: 1.7, color: AppColors.primeryColor)),
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            onTap: () {
              Get.back();
            },
            child: const CustomPngImage(
              imageName: "assets/images/arrow_back.png",
              height: 30,
              width: 30,
            ),
          ),
        ),
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 100, 20, 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const CustomPngImage(
              imageName: "assets/images/alert.png",
              height: 70,
              width: 78.75,
            ),
            Center(
              child: Text("Use in Case of Emergency",
                  style: Theme.of(context)
                      .textTheme
                      .headlineSmall!
                      .copyWith(height: 1.7, color: AppColors.primeryColor)),
            ),
            const SizedBox(
              height: 70,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 180,
                    width: 170,
                    decoration: BoxDecoration(
                        border:
                            Border.all(color: Colors.black.withOpacity(0.1))),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(20, 40, 20, 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const CustomPngImage(
                            imageName: "assets/images/phonecall.png",
                            height: 50,
                            width: 50,
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Text("Call Police",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(color: AppColors.primeryColor)),
                          Text("Control Room",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(color: AppColors.primeryColor))
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      _showBottomSheet(context);
                    },
                    child: Container(
                      height: 180,
                      width: 170,
                      decoration: BoxDecoration(
                          border:
                              Border.all(color: Colors.black.withOpacity(0.1))),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(10, 40, 10, 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const CustomPngImage(
                              imageName: "assets/images/alert2.png",
                              height: 50,
                              width: 50,
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Text("Alert Your",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(color: AppColors.primeryColor)),
                            Text("Emergency Contacts",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(color: AppColors.primeryColor))
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Text(
                  textAlign: TextAlign.center,
                  "Company Tracks Location Data for a Safer and Smooth ride",
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .copyWith(height: 1.7, color: AppColors.primeryColor)),
            ),
          ],
        ),
      )),
    );
  }

  void _showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      useSafeArea: true,
      context: context,
      builder: (BuildContext context) {
        return SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              const Padding(
                padding: EdgeInsets.fromLTRB(10, 30, 10, 10),
                child: ListTile(
                  title: Center(
                    child: CustomPngImage(
                      imageName: "assets/images/alert3.png",
                      height: 50,
                      width: 50,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8),
                child: Center(
                  child: Text(
                    'Continue to send Alert?',
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        color: AppColors.primeryColor,
                        fontWeight: FontWeight.normal),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 20, 20, 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      width: 182,
                      height: 44,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.zero,
                          ),
                        ),
                        child: Text('Cancel',
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(color: AppColors.white)),
                      ),
                    ),
                    SizedBox(
                      width: 182,
                      height: 44,
                      child: ElevatedButton(
                        onPressed: () {
                          _EmergencyBottomSheet(context);
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green,
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.zero,
                          ),
                        ),
                        child: Text('Send Alert',
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(color: AppColors.white)),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  void _EmergencyBottomSheet(BuildContext context) {
    showModalBottomSheet(
      useSafeArea: true,
      context: context,
      builder: (BuildContext context) {
        return SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 30, 10, 10),
                child: Center(
                  child: Text(
                    "Add Emergency Contact",
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        color: AppColors.primeryColor,
                        fontWeight: FontWeight.normal),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Container(
                  height: 40,
                  width: 60,
                  decoration: BoxDecoration(
                      border: Border.all(
                    color: Colors.black.withOpacity(0.1),
                  )),
                  child: Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: CustomPngImage(
                          imageName: "assets/images/person.png",
                          height: 15,
                          width: 15,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        child: Text("Select Contacts",
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(
                                  color: AppColors.primeryColor,
                                )),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Text("Relationship",
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: AppColors.primeryColor,
                        )),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Container(
                  height: 40,
                  width: 60,
                  decoration: BoxDecoration(
                      border: Border.all(
                    color: Colors.black.withOpacity(0.1),
                  )),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text("example@gmail.com",
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(
                                  color: AppColors.primeryColor,
                                ))),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, bottom: 30),
                child: CustomButton(
                  height: 44,
                  width: 1.sw,
                  onPressed: () {},
                  color: AppColors.primeryColor,
                  textColor: AppColors.white,
                  child: Text(
                    "Add Emergency Contacts",
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: AppColors.white, fontSize: 17),
                  ),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}