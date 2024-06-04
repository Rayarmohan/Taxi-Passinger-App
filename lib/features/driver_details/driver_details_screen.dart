import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:taxi_passenger_app/features/driver_details/driver_controller.dart';
import 'package:taxi_passenger_app/features/driver_details/widget/about_tab.dart';
import 'package:taxi_passenger_app/features/driver_details/widget/review_tab.dart';
import 'package:taxi_passenger_app/utils/color/app_colors.dart';
import 'package:taxi_passenger_app/widgets/custom_app_bar.dart';
import 'package:taxi_passenger_app/widgets/custom_images.dart';

class DriverDetailsScreen extends StatelessWidget {
  const DriverDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final DriverDetailsController controller =
        Get.put(DriverDetailsController());
    return Scaffold(
        appBar: CustomAppBar(
          title: Text(
            'Driver Details',
            style: Theme.of(context)
                .textTheme
                .headlineMedium!
                .copyWith(color: AppColors.primeryColor),
          ),
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
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 29.5,
                      child: Container(
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage("assets/images/driverpic.png"),
                            fit: BoxFit
                                .fitHeight, // This will make the image fit properly
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Joseph Deo",
                          style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                              height: 1.7,
                              color: AppColors.primeryColor,
                              fontSize:
                                  16), // Replace with AppColors.primeryColor
                        ),
                        Text(
                          "example@gmail.com",
                          style: Theme.of(context)
                              .textTheme
                              .labelLarge!
                              .copyWith(
                                  height: 1.7,
                                  color: AppColors.primeryColor,
                                  fontWeight: FontWeight.w400,
                                  fontSize:
                                      14), // Replace with AppColors.primeryColor
                        ),
                      ],
                    )
                  ],
                ),
              ),
              const Divider(
                height: 4,
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        const CustomPngImage(
                          imageName: "assets/images/person_icon.png",
                          height: 52,
                          width: 52,
                        ),
                        Text(
                          "7500+",
                          style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                              height: 1.7,
                              color: AppColors.primeryColor,
                              fontSize: 15,
                              fontWeight: FontWeight
                                  .bold), // Replace with AppColors.primeryColor
                        ),
                        Text(
                          "Customer",
                          style: Theme.of(context)
                              .textTheme
                              .labelLarge!
                              .copyWith(
                                  height: 1.7,
                                  color: AppColors.primeryColor,
                                  fontWeight: FontWeight.w400,
                                  fontSize:
                                      12), // Replace with AppColors.primeryColor
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        const CustomPngImage(
                          imageName: "assets/images/wallet_icon.png",
                          height: 52,
                          width: 52,
                        ),
                        Text(
                          "10+",
                          style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                              height: 1.7,
                              color: AppColors.primeryColor,
                              fontSize: 15,
                              fontWeight: FontWeight
                                  .bold), // Replace with AppColors.primeryColor
                        ),
                        Text(
                          "Years Exp",
                          style: Theme.of(context)
                              .textTheme
                              .labelLarge!
                              .copyWith(
                                  height: 1.7,
                                  color: AppColors.primeryColor,
                                  fontWeight: FontWeight.w400,
                                  fontSize:
                                      12), // Replace with AppColors.primeryColor
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        const CustomPngImage(
                          imageName: "assets/images/star_icon.png",
                          height: 52,
                          width: 52,
                        ),
                        Text(
                          "4.9+",
                          style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                              height: 1.7,
                              color: AppColors.primeryColor,
                              fontSize: 15,
                              fontWeight: FontWeight
                                  .bold), // Replace with AppColors.primeryColor
                        ),
                        Text(
                          "Rating",
                          style: Theme.of(context)
                              .textTheme
                              .labelLarge!
                              .copyWith(
                                  height: 1.7,
                                  color: AppColors.primeryColor,
                                  fontWeight: FontWeight.w400,
                                  fontSize:
                                      12), // Replace with AppColors.primeryColor
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        const CustomPngImage(
                          imageName: "assets/images/message_icon.png",
                          height: 52,
                          width: 52,
                        ),
                        Text(
                          "4589",
                          style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                              height: 1.7,
                              color: AppColors.primeryColor,
                              fontSize: 15,
                              fontWeight: FontWeight
                                  .bold), // Replace with AppColors.primeryColor
                        ),
                        Text(
                          "Review",
                          style: Theme.of(context)
                              .textTheme
                              .labelLarge!
                              .copyWith(
                                  height: 1.7,
                                  color: AppColors.primeryColor,
                                  fontWeight: FontWeight.w400,
                                  fontSize:
                                      12), // Replace with AppColors.primeryColor
                        ),
                      ],
                    )
                  ],
                ),
              ),
              TabBar(
                indicatorColor: AppColors.primeryColor,
                controller: controller.tabController,
                tabs: [
                  Tab(
                    child: Text(
                      "About",
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          height: 1.7,
                          color: AppColors.primeryColor,
                          fontSize: 16), // Replace with AppColors.primeryColor
                    ),
                  ),
                  Tab(
                    child: Text(
                      "Review",
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          height: 1.7,
                          color: AppColors.primeryColor,
                          fontSize: 16), // Replace with AppColors.primeryColor
                    ),
                  )
                ],
              ),
              Expanded(
                  child: TabBarView(
                      controller: controller.tabController,
                      children: const [
                    SingleChildScrollView(child: AboutTab()),

                    // Review Tab
                    SingleChildScrollView(child: ReviewTab()),
                  ]))
            ],
          ),
        ));
  }
}
