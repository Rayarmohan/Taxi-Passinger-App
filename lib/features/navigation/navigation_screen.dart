// ignore_for_file: non_constant_identifier_names, camel_case_types, unnecessary_const, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:taxi_passenger_app/features/driver_arrived/widgets/custom_app_driver.dart';
import 'package:taxi_passenger_app/utils/color/app_colors.dart';
import 'package:taxi_passenger_app/widgets/custom_button.dart';
import 'package:taxi_passenger_app/widgets/custom_images.dart';

class NavigationScreen extends StatelessWidget {
  const NavigationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: CustomAppBarDriver(
        title: Text(
          "Navigate Ride",
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
          Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: const EdgeInsets.only(top: 110, right: 20),
              child: CustomPngImage(
                imageName: "assets/images/warning_icon1.png",
                height: 40,
                width: 40,
                boxFit: BoxFit.contain,
              ),
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
          Align(
            alignment: Alignment.center,
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 180, left: 40),
                  child: CustomPngImage(
                    height: 250.h,
                    width: 250.h,
                    imageName: 'assets/images/navigation.png',
                    boxFit: BoxFit.contain,
                  ),
                ),
              ],
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
      height: 246.h,
      child: Padding(
        padding: const EdgeInsets.only(left: 30, right: 30, top: 15),
        child: Column(
          children: [
            SizedBox(
              height: 10.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CircleAvatar(
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
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                          color: AppColors.primeryColor),
                    ),
                    SizedBox(
                      height: 6.h,
                    ),
                    Text(
                      "GR-678-XX",
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: AppColors.primeryColor),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            CustomButton(
              height: 44,
              width: 1.sw,
              onPressed: () {},
              text: "Recenter",
              color: AppColors.primeryColor,
              textColor: AppColors.white,
            )
          ],
        ),
      ),
    );
  }
}
