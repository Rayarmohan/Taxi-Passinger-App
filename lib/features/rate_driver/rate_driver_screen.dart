// ignore_for_file: unnecessary_const


import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taxi_passenger_app/utils/color/app_colors.dart';
import 'package:taxi_passenger_app/widgets/custom_app_bar.dart';
import 'package:taxi_passenger_app/widgets/custom_button.dart';
import 'package:taxi_passenger_app/widgets/custom_images.dart';

class RateDriverScreen extends StatelessWidget {
  const RateDriverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: Text(
          "Rate Driver",
          style: Theme.of(context).textTheme.displayMedium!.copyWith(
              height: 1.7, color: AppColors.primeryColor, fontSize: 20),
        ),
        leading: const Padding(
          padding: EdgeInsets.all(8.0),
          child: CustomPngImage(
            imageName: "assets/images/arrow_back.png",
            height: 30,
            width: 30,
          ),
        ),
      ),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 30, right: 30),
            child: Column(
              children: [
                SizedBox(
                  height: 100.h,
                ),
                const CircleAvatar(
                  radius: 50,
                  child: CustomPngImage(
                    height: 100,
                    width: 100,
                    imageName: 'assets/images/profilepic.png',
                  ),
                ),
                Text('Joseph Deo',
                    style: Theme.of(context).textTheme.displayMedium!.copyWith(
                        height: 1.7,
                        color: AppColors.primeryColor,
                        fontSize: 22,
                        fontWeight: FontWeight.bold)),
                SizedBox(
                  height: 9.h,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Swift (4 Seater)",
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: AppColors.primeryColor),
                    ),
                    const SizedBox(
                      width: 17,
                    ),
                    Container(
                      height: 5.h,
                      width: 5.h,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: AppColors.primeryColor),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      "GR-56-6788",
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: AppColors.primeryColor),
                    ),
                  ],
                ),
                SizedBox(
                  height: 50.h,
                ),
                Text(
                  "How was your trip with",
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      color: AppColors.grey),
                ),
                Text(
                  "Joseph",
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      fontSize: 30,
                      fontWeight: FontWeight.w400,
                      color: AppColors.primeryColor),
                ),
                SizedBox(
                  height: 30.h,
                ),
                Container(
                  width: 350,
                  height: 120,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black.withOpacity(0.2)),
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Center(
                      child: Column(
                        children: [
                          Text(
                            "Your overall rating",
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                    color: AppColors.primeryColor),
                          ),
                          const Expanded(
                            child: CustomPngImage(
                              imageName: "assets/images/stars.png",
                              height: 200,
                              width: 200,
                              boxFit: BoxFit.contain,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

                const SizedBox(
                  height: 150,
                ),
            
                CustomButton(
                height: 44,
                width: 1.sw,
                onPressed: () {},
                text: "Submit",
                color: AppColors.primeryColor,
                textColor: AppColors.white,
              )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
