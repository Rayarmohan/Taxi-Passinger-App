import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:taxi_passenger_app/features/saved_places/widgets/custom_searchbar.dart';
import 'package:taxi_passenger_app/utils/color/app_colors.dart';
import 'package:taxi_passenger_app/utils/route/route_name.dart';
import 'package:taxi_passenger_app/widgets/custom_images.dart';

class AddressSelection extends StatelessWidget {
  const AddressSelection({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Stack(
        children: [
          const SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: CustomPngImage(
              imageName: 'assets/images/map1.png',
              boxFit: BoxFit.cover,
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(30, 70, 30, 0),
            child: CustomSearchBar(
                hintText: 'Current Location',
                leadingIcon: Icon(
                  Icons.search,
                  color: AppColors.primeryColor,
                ),
                trailingIcon: Icon(
                  Icons.my_location,
                  color: AppColors.primeryColor,
                )),
          ),
          const Padding(
            padding: EdgeInsets.only(right: 30, bottom: 90),
            child: Align(
              alignment: Alignment.center,
              child: CustomPngImage(
                height: 50,
                width: 50,
                imageName: 'assets/images/location3.png',
                boxFit: BoxFit.cover,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(right: 80, top: 180),
            child: Align(
              alignment: Alignment.topRight,
              child: CustomPngImage(
                height: 50,
                width: 50,
                imageName: 'assets/images/car_map.png',
                boxFit: BoxFit.cover,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 30, top: 180),
            child: Align(
              alignment: Alignment.topLeft,
              child: CustomPngImage(
                height: 50,
                width: 50,
                imageName: 'assets/images/car_icon.png',
                boxFit: BoxFit.cover,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(right: 30, bottom: 90),
            child: Align(
              alignment: Alignment.centerLeft,
              child: CustomPngImage(
                height: 50,
                width: 50,
                imageName: 'assets/images/car_icon.png',
                boxFit: BoxFit.cover,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(right: 30, bottom: 90),
            child: Align(
              alignment: Alignment.centerRight,
              child: CustomPngImage(
                height: 50,
                width: 50,
                imageName: 'assets/images/car_map.png',
                boxFit: BoxFit.cover,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              height: 300,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Where To?',
                            style: Theme.of(context)
                                .textTheme
                                .displayMedium!
                                .copyWith(
                                    height: 1.7,
                                    color: AppColors.primeryColor,
                                    fontSize: 20)),
                        Container(
                          color: AppColors.primeryColor,
                          child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'Manage',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 14),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: GestureDetector(
                          onTap: () {
                            Get.toNamed(AppRoute.landingPage);
                          },
                          child: Container(
                            color: AppColors.primeryColor,
                            height: 180,
                            width: 150,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const CustomPngImage(
                                  imageName: 'assets/images/location5.png',
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'Destination',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium!
                                      .copyWith(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w400,
                                          color: AppColors.white),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'Enter Destination',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium!
                                      .copyWith(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w400,
                                          color: AppColors.white),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: GestureDetector(
                          onTap: () {
                            Get.toNamed(AppRoute.landingPage);
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(
                                  width: 1,
                                  color: const Color.fromRGBO(241, 241, 241, 1),
                                )),
                            height: 180,
                            width: 150,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const CustomPngImage(
                                  imageName: 'assets/images/Office_icon.png',
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'Office',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium!
                                      .copyWith(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w400,
                                          color: AppColors.primeryColor),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  '35 Km Away',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium!
                                      .copyWith(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w400,
                                          color: AppColors.primeryColor),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      )),
    );
  }
}
