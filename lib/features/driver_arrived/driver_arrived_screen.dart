// ignore_for_file: non_constant_identifier_names, camel_case_types, unnecessary_const, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:taxi_passenger_app/features/driver_arrived/widgets/custom_app_driver.dart';
import 'package:taxi_passenger_app/utils/color/app_colors.dart';
import 'package:taxi_passenger_app/widgets/custom_images.dart';

class DriverArrived extends StatelessWidget {
  const DriverArrived({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: CustomAppBarDriver(
        title: Text(
          "Activate Live Location",
          style: Theme.of(context).textTheme.displayMedium!.copyWith(
              height: 1.7, color: AppColors.primeryColor, fontSize: 20),
        ),
        leading: Padding(
          padding: EdgeInsets.only(top: 10, left: 20),
          child: InkWell(
            onTap: () {
              Get.back();
            },
            child: CustomPngImage(
              imageName: "assets/images/arrow_back.png",
              height: 50,
              width: 50,
              boxFit: BoxFit.contain,
            ),
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 22, top: 10),
            child: Column(
              children: [
                CustomPngImage(
                  imageName: "assets/images/call_icon1.png",
                  height: 40,
                  width: 40,
                  boxFit: BoxFit.contain,
                ),
              ],
            ),
          )
        ],
      ),
      body: Stack(
        children: [
          const SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: CustomPngImage(
              imageName: 'assets/images/map1.png',
              boxFit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height *
                0.13, // Adjust the value as needed
            right: 20,
            child: CustomPngImage(
              imageName: "assets/images/warning_icon1.png",
              height: 40,
              width: 40,
              boxFit: BoxFit.contain,
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height *
                0.57, // Adjust the value as needed
            right: 20,

            child: CustomPngImage(
              imageName: "assets/images/currentlocayion.png",
              height: 50,
              width: 50,
              boxFit: BoxFit.contain,
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.5 -
                200, // Adjust the value as needed
            left: MediaQuery.of(context).size.width * 0.5 -
                115, // Adjust the value as needed
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 10.0),
                    child: CustomPngImage(
                      height: 230,
                      width: 230,
                      imageName: 'assets/images/carpath.png',
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: _PassangerRequest(context),
          ),
        ],
      ),
    );
  }

  Widget _PassangerRequest(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      height: 281.h,
      child: Column(
        children: [
          SizedBox(
            height: 20.h,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25, right: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Driver Is Arriving",
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      color: AppColors.primeryColor),
                ),
                Text(
                  "5 Min away",
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: AppColors.primeryColor),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          const Divider(
            thickness: 0.8,
          ),
          const SizedBox(
            height: 8,
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          const CircleAvatar(
                            radius: 30,
                            child: CustomPngImage(
                              height: 60,
                              width: 60,
                              imageName: 'assets/images/profilepic.png',
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Joseph Deo",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyLarge!
                                    .copyWith(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w600,
                                        color: AppColors.primeryColor),
                              ),
                              SizedBox(
                                height: 6.h,
                              ),
                              Text(
                                "Swift (4 Seater)",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: AppColors.primeryColor),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              CustomPngImage(
                                imageName: "assets/images/wallet.png",
                                height: 20,
                                width: 20,
                                boxFit: BoxFit.contain,
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Text(
                                "Rs. 120.5",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        color: AppColors.primeryColor),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 8.h,
                          ),
                          Text(
                            "GR-56-6788",
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: AppColors.primeryColor),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
