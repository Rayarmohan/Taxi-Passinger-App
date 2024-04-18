import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:taxi_passenger_app/features/chat/chat.dart';
import 'package:taxi_passenger_app/features/driver_arrived/widgets/custom_app_driver.dart';
import 'package:taxi_passenger_app/features/ride/ride_founded2.dart';

import '../../utils/color/app_colors.dart';
import '../../widgets/custom_app_bar.dart';
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
                      0.55, // Extended height
                  width: MediaQuery.of(context).size.width,
                  child: const CustomPngImage(
                    imageName: 'assets/images/ridefounded1.png',
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
                      0.47, // Adjust the value as needed
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
                                  color: Colors.grey,
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
                      const CircleAvatar(
                        backgroundImage:
                            AssetImage("assets/images/josephdeo.png"),
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
                          Get.to(() => const ChatPage());
                        },
                        child: Container(
                          padding: const EdgeInsets.all(8.0),
                          decoration: const BoxDecoration(
                            color: AppColors.primeryColor,
                            shape: BoxShape.circle,
                          ),
                          child: const Icon(
                            Icons.message_rounded,
                            color: Colors.white,
                            size: 24,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 9,
                      ),
                      Container(
                        padding: const EdgeInsets.all(8.0),
                        decoration: const BoxDecoration(
                          color: Colors.green,
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(
                          Icons.phone,
                          color: Colors.white,
                          size: 24,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 18.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          const SizedBox(width: 8),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Rate per",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium!
                                      .copyWith(
                                        color: AppColors.primeryColor,
                                        fontSize: 15,
                                      )),
                              const SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: [
                                  Image.asset(
                                    'assets/images/walletnew.png', // Replace with your actual image path
                                    width:
                                        24, // Set the width to fit your design
                                    height:
                                        24, // Set the height to fit your design
                                    color: AppColors
                                        .primeryColor, // Optional: Apply a color filter if needed
                                  ),
                                  Text("Rs 120.5",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyMedium!
                                          .copyWith(
                                              color: Colors.black,
                                              fontSize: 12)),
                                ],
                              ),
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
                                  .bodyMedium!
                                  .copyWith(
                                      color: AppColors.primeryColor,
                                      fontSize: 15)),
                          const SizedBox(
                            height: 5,
                          ),
                          Text("GR-56-6788",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(color: Colors.black, fontSize: 12)),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("No. of seats",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                      color: AppColors.primeryColor,
                                      fontSize: 15)),
                          const SizedBox(
                            height: 5,
                          ),
                          Text("4 seats",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(color: Colors.black, fontSize: 12)),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 25),
                  CustomButton(
                    height: 44,
                    width: 1.sw,
                    onPressed: () {},
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
