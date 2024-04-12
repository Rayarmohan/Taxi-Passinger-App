// ignore_for_file: non_constant_identifier_names, camel_case_types, unnecessary_const, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:taxi_passenger_app/features/driver_arrived/widgets/custom_app_driver.dart';
import 'package:taxi_passenger_app/utils/color/app_colors.dart';
import 'package:taxi_passenger_app/widgets/custom_button.dart';
import 'package:taxi_passenger_app/widgets/custom_images.dart';

class NavigateYourRide extends StatelessWidget {
  const NavigateYourRide({super.key});

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
                  imageName: "assets/images/call_icon.png",
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
              imageName: "assets/images/warning_icon.png",
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
                350.h, // Adjust the value as needed
            left: MediaQuery.of(context).size.width * 0.5 -
                325, // Adjust the value as needed
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only( right: 10.0),
                child: CustomPngImage(
                  height: 650.h,
                  width: 650,
                  imageName: 'assets/images/navigateride.png',
                  boxFit: BoxFit.contain,
                ),
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
      height: 246.h,
      child: Padding(
        padding: const EdgeInsets.only(left: 30, right: 30, top: 15),
        child: Column(
          children: [
            SizedBox(
              height: 20.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomPngImage(
                  height: 20.h,
                  width: 20.h,
                  imageName: 'assets/images/location_icon.png',
                  boxFit: BoxFit.contain,
                ),
                SizedBox(
                  width: 10.h,
                ),
                Text(
                  "KwaZulu-Natal, Cape Town",
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: AppColors.primeryColor),
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
              text: "Cancel Ride",
              color: AppColors.primeryColor,
              textColor: AppColors.white,
            )
          ],
        ),
      ),
    );
  }
}
