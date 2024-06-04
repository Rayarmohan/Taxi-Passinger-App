// ignore_for_file: non_constant_identifier_names, unnecessary_import

import 'package:flutter/material.dart';
// ignore: duplicate_ignore
// ignore: unnecessary_import
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'package:taxi_passenger_app/features/manage_address/addaddress_controller.dart';
import 'package:taxi_passenger_app/features/manage_address/manage_address_widget/custom_address_button.dart';
import 'package:taxi_passenger_app/features/manage_address/manage_address_widget/custom_appbar2.dart';

import 'package:taxi_passenger_app/utils/color/app_colors.dart';

import 'package:taxi_passenger_app/widgets/custom_button.dart';
import 'package:taxi_passenger_app/widgets/custom_images.dart';
import 'package:taxi_passenger_app/widgets/custom_text_field.dart';

class AddAddress extends StatelessWidget {
  const AddAddress({super.key});

  @override
  Widget build(BuildContext context) {
    final AddAddressController controller = Get.put(AddAddressController());
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: CustomAppBarAddress(
        title: Text('Add Address',
            style: Theme.of(context)
                .textTheme
                .headlineMedium!
                .copyWith(height: 1.7, color: AppColors.primeryColor)),
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
      body: Stack(
        children: [
          const SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: CustomPngImage(
              imageName: 'assets/images/addadress.png',
              boxFit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.2,
            left: MediaQuery.of(context).size.width * 0.50,
            child: const CustomPngImage(
              imageName: "assets/images/loctaion.png",
              height: 30,
              width: 30,
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: _PassangerRequest(context, controller),
          ),
        ],
      ),
    );
  }

  Widget _PassangerRequest(
      BuildContext context, AddAddressController controller) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      height: 500.h,
      child: Padding(
        padding: const EdgeInsets.only(right: 25, left: 25, bottom: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20.h,
              ),
              Text(
                "Save address as*",
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: AppColors.grey),
              ),
              const SizedBox(
                height: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 30,
                        width: 57,
                        decoration: BoxDecoration(
                            color: AppColors.primeryColor,
                            borderRadius: BorderRadius.circular(10)),
                        child: Center(
                          child: Text(
                            "Home",
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: AppColors.white),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Container(
                        height: 30,
                        width: 58,
                        decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(10)),
                        child: Center(
                          child: Text(
                            "Office",
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: AppColors.black),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Container(
                        height: 30,
                        width: 105,
                        decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(10)),
                        child: Center(
                          child: Text(
                            "Parents Home",
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: AppColors.black),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Container(
                        height: 30,
                        width: 65,
                        decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(10)),
                        child: Center(
                          child: Text(
                            "Friends",
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: AppColors.black),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "Complete Address",
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: AppColors.grey),
              ),
              const SizedBox(
                height: 10,
              ),
              const AddressInputField(),
              SizedBox(
                height: 10.h,
              ),
              Text(
                "Floor",
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: AppColors.grey),
              ),
              const SizedBox(
                height: 10,
              ),
              CustomTextField(
                controller: controller.floorAddressCon,
                hint: "Enter Floor",
                height: 15,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "Landmark",
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: AppColors.grey),
              ),
              const SizedBox(
                height: 10,
              ),
              CustomTextField(
                controller: controller.landmarkAddressCon,
                hint: "Enter Landmark",
                height: 15,
              ),
              SizedBox(
                height: 50.h,
              ),
              CustomButton(
                height: 44,
                width: 1.sw,
                onPressed: () {},
                color: AppColors.primeryColor,
                textColor: AppColors.white,
                child: Text(
                  "Save Address",
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .copyWith(color: AppColors.white, fontSize: 17),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
