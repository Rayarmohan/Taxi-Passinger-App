import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
          "Arrived at Destination",
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
              padding: EdgeInsets.only(top: 60, right: 22),
              child: Column(
                children: [
                  Column(
                    children: [
                      CustomPngImage(
                        imageName: "assets/images/call_icon1.png",
                        height: 40,
                        width: 40,
                        boxFit: BoxFit.contain,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  CustomPngImage(
                    imageName: "assets/images/warning_icon1.png",
                    height: 40,
                    width: 40,
                    boxFit: BoxFit.contain,
                  ),
                ],
              ),
            ),
          ),
          const Align(
            alignment: Alignment.center,
            child: Column(
              children: [
                CustomPngImage(
                  height: 800,
                  width: 200,
                  imageName: 'assets/images/image copy.png',
                  boxFit: BoxFit.cover,
                ),
    
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: _PayRequest(context),
          ),
          
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
    height: 256,
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
                height: 44,
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
