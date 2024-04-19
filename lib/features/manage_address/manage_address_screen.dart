// ignore_for_file: unnecessary_import
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:taxi_passenger_app/features/manage_address/add_address_screen.dart';
import 'package:taxi_passenger_app/features/manage_address/manage_address_widget/dotted_border.dart';
import 'package:taxi_passenger_app/utils/color/app_colors.dart';
import 'package:taxi_passenger_app/widgets/custom_app_bar.dart';
import 'package:taxi_passenger_app/widgets/custom_button.dart';
import 'package:taxi_passenger_app/widgets/custom_images.dart';

class ManageAddress extends StatelessWidget {
  const ManageAddress({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(
        title: Text('Manage Address',
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
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.fromLTRB(30, 40, 30, 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 380.h,
                width: 1.sw,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black.withOpacity(0.2),
                  ),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListTile(
                        leading: const CustomPngImage(
                          imageName: "assets/images/loctaion.png",
                          height: 25,
                          width: 25,
                        ),
                        title: Text("Home",
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium!
                                .copyWith(
                                    height: 1.7,
                                    color: AppColors.primeryColor,
                                    fontWeight: FontWeight.normal,
                                    fontSize: 16)),
                        subtitle: Text("Durban, 4000, 219 Florida Rd...",
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(
                                    height: 1.4,
                                    color: AppColors.primeryColor,
                                    fontSize: 15)),
                      ),
                    ),
                    Divider(height: 2, color: Colors.black.withOpacity(0.2)),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListTile(
                        leading: const CustomPngImage(
                          imageName: "assets/images/loctaion.png",
                          height: 25,
                          width: 25,
                        ),
                        title: Text("Office",
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge!
                                .copyWith(
                                    height: 1.7,
                                    color: AppColors.primeryColor,
                                    fontWeight: FontWeight.normal,
                                    fontSize: 16)),
                        subtitle: Text("KwaZulu-Natal, 219 Florida Rd...",
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(
                                    height: 1.4,
                                    color: AppColors.primeryColor,
                                    fontSize: 15)),
                      ),
                    ),
                    Divider(height: 2, color: Colors.black.withOpacity(0.2)),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListTile(
                        leading: const CustomPngImage(
                          imageName: "assets/images/loctaion.png",
                          height: 25,
                          width: 25,
                        ),
                        title: Text("Parent’s Home",
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge!
                                .copyWith(
                                    height: 1.7,
                                    color: AppColors.primeryColor,
                                    fontWeight: FontWeight.normal,
                                    fontSize: 16)),
                        subtitle: Text("Durban, 4000, 219 Florida Rd...",
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(
                                    height: 1.4,
                                    color: AppColors.primeryColor,
                                    fontSize: 15)),
                      ),
                    ),
                    Divider(height: 2, color: Colors.black.withOpacity(0.2)),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListTile(
                        leading: const CustomPngImage(
                          imageName: "assets/images/loctaion.png",
                          height: 25,
                          width: 25,
                        ),
                        title: Text("Friend’s home",
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge!
                                .copyWith(
                                    height: 1.7,
                                    color: AppColors.primeryColor,
                                    fontWeight: FontWeight.normal,
                                    fontSize: 16)),
                        subtitle: Text("KwaZulu-Natal, 219 Florida Rd...",
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(
                                    height: 1.4,
                                    color: AppColors.primeryColor,
                                    fontSize: 15)),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.all(2),
                child: DottedBorderContainer(
                  onUploadPressed: () {
                    Get.to(AddAddress());
                  },
                ),
              ),
              SizedBox(
                height: 140.h,
              ),
              CustomButton(
                height: 44,
                width: 1.sw,
                onPressed: () {},
                color: AppColors.primeryColor,
                textColor: AppColors.white,
                child: Text(
                  "Apply",
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .copyWith(color: AppColors.white, fontSize: 17),
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
