import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:taxi_passenger_app/features/home/widgets/custom_app_bar.dart';
import 'package:taxi_passenger_app/utils/color/app_colors.dart';
import 'package:taxi_passenger_app/utils/route/route_name.dart';
import 'package:taxi_passenger_app/widgets/custom_images.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: TransparentAppBar(
        title: Text(
          "Find Your Ride",
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
          const Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: EdgeInsets.only(top: 80, right: 20),
              child: CustomPngImage(
                imageName: "assets/images/warning_icon1.png",
                height: 40,
                width: 40,
                boxFit: BoxFit.contain,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(right: 30, bottom: 90),
            child: Align(
              alignment: Alignment.center,
              child: CustomPngImage(
                height: 50,
                width: 50,
                imageName: 'assets/images/location1.png',
                boxFit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0, bottom: 20),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: _listview(),
            ),
          ),
        ],
      ),
    );
  }
}

Widget _listview() {
  // ignore: sized_box_for_whitespace
  return Container(
    height: 130,
    child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 3,
        itemBuilder: ((context, index) {
          return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Stack(
                children: [
                  GestureDetector(
                    onTap: () => Get.toNamed(AppRoute.pickUp),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(width: 1.0, color: Colors.black)),
                      height: 130,
                      width: 180,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 20.0, top: 10, bottom: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                // ignore: avoid_unnecessary_containers
                                Container(
                                  child: const CustomPngImage(
                                    height: 26,
                                    width: 54.6,
                                    imageName: 'assets/images/car.png',
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            decoration: const BoxDecoration(
                              border: Border(
                                top: BorderSide(
                                    width: 1.0,
                                    color: Colors.black,
                                    style: BorderStyle.solid),
                              ),
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 5.0, left: 20),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text("Swift",
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyLarge!
                                              .copyWith(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w500,
                                                  color:
                                                      AppColors.primeryColor)),
                                      const SizedBox(
                                        width: 41,
                                      ),
                                      Text("Rs 104.0",
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyLarge!
                                              .copyWith(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w700,
                                                  color:
                                                      AppColors.primeryColor)),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 20.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text("4 Seats Capacity",
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyMedium!
                                              .copyWith(
                                                  height: 1.7,
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w400,
                                                  color:
                                                      AppColors.primeryColor)),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: 1,
                    right: 1,
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        Icons.check_circle,
                        color: AppColors.primeryColor,
                        size: 24,
                      ),
                    ),
                  ),
                ],
              ));
        })),
  );
}
