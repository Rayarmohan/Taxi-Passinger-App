import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:taxi_passenger_app/features/home/widgets/custom_app_bar.dart';
import 'package:taxi_passenger_app/utils/color/app_colors.dart';
import 'package:taxi_passenger_app/utils/route/route_name.dart';
import 'package:taxi_passenger_app/widgets/custom_button.dart';
import 'package:taxi_passenger_app/widgets/custom_images.dart';

class ArrivedScreen extends StatelessWidget {
  const ArrivedScreen({super.key});

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
          const Align(
            alignment: Alignment.center,
            child: Column(
              children: [
                CustomPngImage(
                  height: 500,
                  width: 200,
                  imageName: 'assets/images/navigateride.png',
                  boxFit: BoxFit.cover,
                ),

                // Padding(
                //   padding: EdgeInsets.only(top: 120, right: 100),
                //   child: CustomPngImage(
                //     height: 30,
                //     width: 15,
                //     imageName: 'assets/images/car_icon.png',
                //     boxFit: BoxFit.cover,
                //   ),
                // ),
                // Padding(
                //   padding: EdgeInsets.only(right: 65.0),
                //   child: CustomPngImage(
                //     height: 300,
                //     width: 130,
                //     imageName: 'assets/images/mappath1.png',
                //     boxFit: BoxFit.cover,
                //   ),
                // ),
                // Padding(
                //   padding: EdgeInsets.only(bottom: 60, right: 120.0),
                //   child: CustomPngImage(
                //     height: 30,
                //     width: 15,
                //     imageName: 'assets/images/location_point.png',
                //     boxFit: BoxFit.cover,
                //   ),
                // ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: _PayRequest(context),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: const EdgeInsets.only(top: 180.0, right: 16),
              child: Container(
                height: 45,
                width: 45,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    color: Colors.white),
                child: const Center(
                  child: CustomPngImage(
                    width: 50,
                    height: 50,
                    imageName: 'assets/images/target_icon3.png',
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

// ignore: non_constant_identifier_names
Widget _PayRequest(BuildContext context) {
  return Container(
    decoration: const BoxDecoration(
      color: Colors.white,
    ),
    height: 220,
    child: Column(
      children: [
        const SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              const CircleAvatar(
                radius: 30,
                backgroundColor: AppColors.primeryColor,
                child: Icon(
                  size: 40,
                  Icons.check_outlined,
                  color: AppColors.white,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text('Arrived at Destination',
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: AppColors.primeryColor)),
              const SizedBox(
                height: 10,
              ),
              Text(
                "6391 Elgin S.Celina, Delwal....",
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: AppColors.primeryColor),
              ),
              const SizedBox(
                height: 25,
              ),
              SizedBox(
                height: 40,
                child: Padding(
                  padding: const EdgeInsets.only(left: 5.0, right: 5.0),
                  child: CustomButton(
                    onPressed: () {
                      Get.toNamed(AppRoute.paymentMethode);
                    },
                    child: Text(
                      'Pay Cash Rs. 120.54',
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium!
                          .copyWith(fontSize: 15, color: AppColors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    ),
  );
}
