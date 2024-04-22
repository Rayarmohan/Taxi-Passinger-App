import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:taxi_passenger_app/utils/color/app_colors.dart';
import 'package:taxi_passenger_app/utils/route/route_name.dart';
import 'package:taxi_passenger_app/widgets/custom_button.dart';

class EnableLocationScreen extends StatelessWidget {
  const EnableLocationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 180,
              ),
              const CircleAvatar(
                backgroundColor: AppColors.primeryColor,
                radius: 50,
                child: Icon(
                  Icons.location_on,
                  size: 60,
                  color: AppColors.white,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text("Enable Location Access",
                  style: Theme.of(context)
                      .textTheme
                      .headlineMedium!
                      .copyWith(height: 1.7, color: AppColors.primeryColor)),
              Text("To ensure a seamless and efficient experience,",
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      height: 1.7,
                      color: AppColors.primeryColor,
                      fontWeight: FontWeight.w300)),
              Text("allow us access to your location.",
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      height: 1.7,
                      color: AppColors.primeryColor,
                      fontWeight: FontWeight.w300)),
              const SizedBox(
                height: 250,
              ),
              CustomButton(
                height: 44,
                width: 1.sw,
                onPressed: () {
                  Get.toNamed(AppRoute.addressSelection);
                },
                text: "Allow Location Access",
                color: AppColors.primeryColor,
                textColor: AppColors.white,
              ),
              const SizedBox(
                height: 10,
              ),
              MaterialButton(
                onPressed: () {},
                minWidth: 1.sw,
                height: 50,
                color: AppColors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(1)),
                child: Text(
                  "Maybe Later",
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .copyWith(color: AppColors.primeryColor),
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}
