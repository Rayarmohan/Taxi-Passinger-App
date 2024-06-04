import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:taxi_passenger_app/features/rate_driver/rate_driver_screen.dart';

import 'package:taxi_passenger_app/features/ride/ride_confirmation.dart';

import '../../utils/color/app_colors.dart';
import '../../widgets/custom_app_bar.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_images.dart';

class PayCash extends StatelessWidget {
  const PayCash({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: Text(
          "Pay Cash",
          style: Theme.of(context).textTheme.headlineLarge!.copyWith(
              height: 1.7, color: AppColors.primeryColor, fontSize: 24),
        ),
        leading: const Padding(
          // Removed const
          padding: EdgeInsets.all(8.0),
          child: CustomPngImage(
            imageName: "assets/images/arrow_back.png",
            height: 30,
            width: 30,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0), // Removed const
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  // Removed const
                  height: 80,
                ),
                const CircleAvatar(
                  backgroundColor: AppColors.primeryColor,
                  radius: 40,
                  child:   CustomPngImage(
                    imageName: "assets/images/wallet_white.png",
                    height: 30,
                    width: 30,
                  ),
                ),
                Text("Wallet",
                    style: Theme.of(context)
                        .textTheme
                        .headlineSmall!
                        .copyWith(height: 1.7, color: AppColors.primeryColor)),
                const SizedBox(
                  // Removed const
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0), // Removed const
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Column(
                        // Removed const
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          const Icon(Icons.radio_button_checked, size: 20.0),
                          SizedBox(
                            height: 40,
                            child: Image.asset('assets/images/dottedline.png'),
                          ),
                          const Icon(Icons.location_on, size: 18.0),
                        ],
                      ),
                      Expanded(
                        child: Padding(
                          padding:
                              const EdgeInsets.only(left: 8.0), // Removed const
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
                                // Removed const
                                height: 7,
                              ),
                              const Divider(
                                color: Color(0xFF0A2B4C),
                                thickness: 1.0,
                              ),
                              const SizedBox(
                                // Removed const
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
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 25.0,
                        ), // Removed const
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
                                  .copyWith(height: 1.7, color: AppColors.white),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  // Removed const
                  height: 40,
                ),
                Stack(children: [
                  SizedBox(
                    width: MediaQuery.sizeOf(context).width,
                    child: Container(
                      color: AppColors.primeryColor,
                      height: 94,
                      width: 325,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment
                            .center, // This aligns the row's children vertically
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(left: 43.0),
                            child: SizedBox(
                              width: 59,
                              height: 59,
                              child: CircleAvatar(
                                radius: 40,
                                backgroundImage: AssetImage(
                                    "assets/images/jessica_image.png",
                                  
                                    ), // Using backgroundImage to fit the image
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 24,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment
                                .center, // Center the texts vertically
                            crossAxisAlignment: CrossAxisAlignment
                                .start, // Align the texts to the start (left side)
                            mainAxisSize: MainAxisSize
                                .min, // Use the minimum space needed by the children
                            children: [
                              Text(
                                "Jessica",
                                style: Theme.of(context)
                                    .textTheme
                                    .headlineMedium!
                                    .copyWith(
                                      color: AppColors.white,
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                              SizedBox(height: 7,),
                              Text(
                                "Cash payment",
                                style: Theme.of(context)
                                    .textTheme
                                    .labelMedium!
                                    .copyWith(
                                        color: AppColors.white,
                                        fontWeight: FontWeight.w300),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Positioned(
                    left: -14,
                    top: 38,
                    child: CircleAvatar(
                      backgroundColor: AppColors.white,
                      radius: 13.5,
                    ),
                  ),
                  const Positioned(
                    right: -14,
                    top: 38,
                    child: CircleAvatar(
                      backgroundColor: AppColors.white,
                      radius: 13.5,
                    ),
                  )
                ]),
                const SizedBox(
                  // Removed const
                  height: 14,
                ),
                Container(
                  height: 44,
                  width: 370,
                  color: AppColors.primeryColor,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 10.0), // Removed const
                        child: Text(
                          "Total Amount",
                          style: Theme.of(context)
                              .textTheme
                              .displaySmall!
                              .copyWith(
                                  height: 1.7,
                                  color: AppColors.white,
                                  fontSize: 17),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(right: 10.0), // Removed const
                        child: Text(
                          "Rs 120.5",
                          style: Theme.of(context)
                              .textTheme
                              .displaySmall!
                              .copyWith(
                                  height: 1.7,
                                  color: AppColors.white,
                                  fontSize: 17),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 60), // Removed const
                CustomButton(
                  height: 44,
                  width: 1.sw,
                  onPressed: () {
                    Get.to(() => RateDriverScreen());
                  },
                  text: ("Cash Paid"),
                  textColor: Colors.white,
                  color: Colors.green,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
