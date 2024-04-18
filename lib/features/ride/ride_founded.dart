import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:taxi_passenger_app/features/chat/chat.dart';

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
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Container(
              height: 20,
              width: 20,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(30))),
              child: const Center(
                child: Padding(
                  padding: EdgeInsets.only(left: 6),
                  child: Icon(
                    Icons.arrow_back_ios,
                    size: 18,
                    color: AppColors.primeryColor,
                  ),
                ),
              )),
        ),
        centerTitle: true,
        title: Text('Ride Founded',
            style: Theme.of(context)
                .textTheme
                .bodyLarge!
                .copyWith(color: AppColors.primeryColor)),
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
                const Positioned(
                  right: 10,
                  bottom: 10,
                  child: CustomPngImage(
                    imageName: "assets/images/gps.png",
                    height: 50,
                    width: 50,
                    boxFit: BoxFit.contain,
                  ),
                ),
                Positioned(
                  right: 10,
                  top: 33,
                  child: Container(
                    padding: const EdgeInsets.all(8.0),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.call,
                      color: AppColors.primeryColor,
                      size: 24,
                    ),
                  ),
                ),
                Positioned(
                  right: 10,
                  top: 80,
                  child: Container(
                    padding: const EdgeInsets.all(8.0),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.warning_amber_rounded,
                      color: AppColors.primeryColor,
                      size: 29,
                    ),
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
                        padding: const EdgeInsets.all(8.0),
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
