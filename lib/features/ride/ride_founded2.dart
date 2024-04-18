// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:taxi_passenger_app/features/driver_arrived/widgets/custom_app_driver.dart';
import 'package:taxi_passenger_app/features/ride/ride_founded2.dart';

import '../../utils/color/app_colors.dart';
import '../../widgets/custom_app_bar.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_images.dart';
import '../chat/chat.dart';

class RideFounded2 extends StatelessWidget {
  const RideFounded2({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,
        designSize:
            const Size(360, 690)); // Initialize ScreenUtil with design size

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: CustomAppBarDriver(
        title: Text(
          "Ride Founded",
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height *
                      0.47, // Extended height
                  width: MediaQuery.of(context).size.width,
                  child: CustomPngImage(
                    imageName: 'assets/images/ridefounded2.png',
                    boxFit: BoxFit.cover,
                  ),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 90, right: 20),
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
                      0.39, // Adjust the value as needed
                  right: 20,

                  child: CustomPngImage(
                    imageName: "assets/images/currentlocayion.png",
                    height: 50,
                    width: 50,
                    boxFit: BoxFit.contain,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                const SizedBox(height: 16.0),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Ride Founded",
                          style: Theme.of(context)
                              .textTheme
                              .bodySmall!
                              .copyWith(
                                  color: AppColors.primeryColor, fontSize: 20)),
                      Text("5 min away",
                          style: Theme.of(context)
                              .textTheme
                              .bodySmall!
                              .copyWith(
                                  color: AppColors.primeryColor,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14)),
                    ],
                  ),
                ),
                const SizedBox(height: 16.0),
                const Divider(
                  height: 16.0,
                  thickness: 0.8,
                  color: Color(0xFFEDEDED),
                ),
                SizedBox(
                  height: 16.0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundImage:
                            const AssetImage("assets/images/josephdeo.png"),
                        radius: 30,
                      ),
                      const SizedBox(width: 8.0),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Joseph Deo",
                                style: Theme.of(context)
                                    .textTheme
                                    .titleMedium!
                                    .copyWith(
                                        color: AppColors.primeryColor,
                                        fontSize: 18.0)),
                            Text("Swift",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodySmall!
                                    .copyWith(
                                        color: AppColors.primeryColor,
                                        fontSize: 14.0)),
                          ],
                        ),
                      ),
                      InkWell(
                          onTap: () {
                            Get.to(() => ChatPage());
                          },
                          child: CustomPngImage(
                            imageName: "assets/images/message_icon1.png",
                            height: 41,
                            width: 41,
                          )),
                      SizedBox(
                        width: 15.h,
                      ),
                      CustomPngImage(
                        imageName: "assets/images/call_icon_green.png",
                        height: 41,
                        width: 41,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(Icons.radio_button_checked, size: 20.0),
                          SizedBox(
                            height: 40,
                            child:
                                Image.asset('assets/images/dottedline.png'),
                          ),
                          CustomPngImage(
                            imageName: "assets/images/location_icon.png",
                            width: 15,
                            height: 20,
                          )
                        ],
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              '219 Florida Rd, Durban',
                              style: Theme.of(context)
                                  .textTheme
                                  .titleMedium!
                                  .copyWith(
                                      height: 1.7,
                                      color: AppColors.primeryColor),
                            ),
                            const SizedBox(
                              height: 7,
                            ),
                            Divider(
                              color: Color(0xFFEDEDED),
                              thickness: 0.8,
                            ),
                            const SizedBox(
                              height: 7,
                            ),
                            Text(
                              'KwaZulu-Natal, Cape Town',
                              style: Theme.of(context)
                                  .textTheme
                                  .titleMedium!
                                  .copyWith(
                                      height: 1.7,
                                      color: AppColors.primeryColor),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 25.0,
                        ),
                        child: Container(
                          color: AppColors.primeryColor,
                          width: 73,
                          height: 29,
                          child: Center(
                            child: Text(
                              ' 10 min trip ',
                              style: Theme.of(context)
                                  .textTheme
                                  .titleSmall!
                                  .copyWith(
                                      height: 1.7,
                                      color: Colors.white,
                                      fontSize: 10,
                                      fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 9.0),
                Divider(
                  height: 16.0,
                  thickness: 0.8,
                  color: Color(0xFFEDEDED),
                ),
                const SizedBox(
                  height: 9.0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Rate Per",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall!
                                  .copyWith(
                                      color: AppColors.primeryColor,
                                      fontSize: 14.0, fontWeight: FontWeight.w400)),
                          SizedBox(
                            height: 8.h,
                          ),
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
                                    .labelMedium!
                                    .copyWith(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                        color: AppColors.primeryColor),
                              )
                            ],
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Car Number",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall!
                                  .copyWith(
                                      color: AppColors.primeryColor,
                                      fontSize: 14.0, fontWeight: FontWeight.w400)),
                          SizedBox(
                            height: 8.h,
                          ),
                          Text(
                            "GR-56-6788",
                            style: Theme.of(context)
                                .textTheme
                                .labelMedium!
                                .copyWith(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: AppColors.primeryColor),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("No. of Seats",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall!
                                  .copyWith(
                                      color: AppColors.primeryColor,
                                      fontSize: 14.0, fontWeight: FontWeight.w400)),
                          SizedBox(
                            height: 8.h,
                          ),
                          Text(
                            "4 Seats",
                            style: Theme.of(context)
                                .textTheme
                                .labelMedium!
                                .copyWith(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: AppColors.primeryColor),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 25),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: CustomButton(
                    height: 44,
                    width: 1.sw,
                    onPressed: () {
                      Get.to(() => RideFounded2());
                    },
                    text: "Cancel Ride",
                    textColor: Colors.white,
                    color: AppColors.primeryColor,
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
