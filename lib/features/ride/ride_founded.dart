import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:taxi_passenger_app/features/chat/chat.dart';
import 'package:taxi_passenger_app/features/driver_arrived/widgets/custom_app_driver.dart';
import 'package:taxi_passenger_app/features/driver_details/driver_details_screen.dart';
import 'package:taxi_passenger_app/features/sos/sos_screen.dart';
import 'package:taxi_passenger_app/utils/route/route_name.dart';

import '../../utils/color/app_colors.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_images.dart';

class RideFounded extends StatelessWidget {
  const RideFounded({super.key});

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
          padding: const EdgeInsets.only(top: 10, left: 20),
          child: InkWell(
            onTap: () {
              Get.back();
            },
            child: const CustomPngImage(
              imageName: "assets/images/arrow_back.png",
              height: 50,
              width: 50,
              boxFit: BoxFit.contain,
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 22, top: 10),
            child: Column(
              children: [
                GestureDetector(
                  onTap: () {
                    Get.toNamed(AppRoute.sosScreens);
                  },
                  child: const CustomPngImage(
                    imageName: "assets/images/call_icon1.png",
                    height: 40,
                    width: 40,
                    boxFit: BoxFit.contain,
                  ),
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
                      0.55, // Extended height
                  width: MediaQuery.of(context).size.width,
                  child: const CustomPngImage(
                    imageName: 'assets/images/ridefounded1.png',
                    boxFit: BoxFit.cover,
                  ),
                ),
                const Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: EdgeInsets.only(top: 90, right: 20),
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
                      0.47, // Adjust the value as needed
                  right: 20,

                  child: const CustomPngImage(
                    imageName: "assets/images/currentlocayion.png",
                    height: 50,
                    width: 50,
                    boxFit: BoxFit.contain,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                children: [
                  const SizedBox(height: 16.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Ride Founded",
                          style: Theme.of(context)
                              .textTheme
                              .titleSmall!
                              .copyWith(
                                  color: AppColors.primeryColor, fontSize: 18)),
                      Text("5 min away",
                          style: Theme.of(context)
                              .textTheme
                              .titleSmall!
                              .copyWith(
                                  color: AppColors.primeryColor,
                                  fontWeight: FontWeight.w300,
                                  fontSize: 14)),
                    ],
                  ),
                  const SizedBox(
                    height: 16.0,
                  ),
                  const Divider(
                    height:
                        16.0, // This sets the total height taken by the divider widget.
                    thickness:
                        0.5, // This sets the thickness of the line of the divider.
                    color: Colors
                        .grey, // Set the color to grey. You can adjust the shade as needed.
                  ),
                  const SizedBox(
                    height: 16.0,
                  ),
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () => Get.to(const DriverDetailsScreen()),
                        child: const CircleAvatar(
                          backgroundImage:
                              AssetImage("assets/images/josephdeo.png"),
                          radius: 30,
                        ),
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
                          Get.to(() => const ChatPage());
                        },
                        child: Container(
                          padding: const EdgeInsets.all(10.0),
                          child: const CustomPngImage(
                            imageName: "assets/images/circular_message.png",
                            height: 41,
                            width: 41,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 9,
                      ),
                      Container(
                        padding: const EdgeInsets.all(10.0),
                        child: const CustomPngImage(
                          imageName: "assets/images/circular_phone.png",
                          height: 41,
                          width: 41,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 18.0),
                  Row(
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
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w400)),
                          SizedBox(
                            height: 8.h,
                          ),
                          Row(
                            children: [
                              const CustomPngImage(
                                imageName: "assets/images/wallet.png",
                                height: 20,
                                width: 20,
                                boxFit: BoxFit.contain,
                              ),
                              const SizedBox(
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
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w400)),
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
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w400)),
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
                  const SizedBox(height: 25),
                  CustomButton(
                    height: 44,
                    width: 1.sw,
                    onPressed: () {
                      Get.toNamed(AppRoute.cancelRideScreen);
                    },
                    text: "Cancel Ride",
                    textColor: Colors.white,
                    color: AppColors.primeryColor,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
