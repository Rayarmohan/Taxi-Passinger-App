// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:taxi_passenger_app/features/profile/widgets/editProfile_controller.dart';
import 'package:taxi_passenger_app/features/profile/widgets/update_photo.dart';
import 'package:taxi_passenger_app/utils/color/app_colors.dart';
import 'package:taxi_passenger_app/widgets/custom_app_bar.dart';
import 'package:taxi_passenger_app/widgets/custom_images.dart';

class ProfileEditUser extends StatelessWidget {
  const ProfileEditUser({super.key});

  @override
  Widget build(BuildContext context) {
    final EditprofileCon controller = Get.put(EditprofileCon());
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(
        title: Text('Profile',
            style: Theme.of(context)
                .textTheme
                .headlineMedium!
                .copyWith(height: 1.7, color: AppColors.primeryColor)),
        leading: Padding(
          padding: EdgeInsets.all(8.0),
          child: InkWell(
            onTap: () {
              Get.back();
            },
            child: CustomPngImage(
              imageName: "assets/images/arrow_back.png",
              height: 30,
              width: 30,
            ),
          ),
        ),
      ),
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
        child: SingleChildScrollView(
          physics: AlwaysScrollableScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ProfileUpdate(
                  imagePath: "assets/images/Propic.png",
                  onUpdate: () {
                  
                  }),
              SizedBox(
                height: 10,
              ),
              Center(
                  child: Text("Jessica",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                      ))),
              SizedBox(
                height: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Name",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                        color: AppColors.grey
                      )),
                      SizedBox(height: 10,),
                       Container(
                        height: 50,
                        width: 500,
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 1,
                            color: AppColors.grey,
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Eric Selvick",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                    height: 1.7,
                                    color: AppColors.primeryColor
                                  ),
                            ),
                          ],
                        ),
                      ),
                       SizedBox(height: 10,),
                      Text("Phone Number",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                        color: AppColors.primeryColor
                      )),
                      SizedBox(height: 10,),
                      Row(
                      children: [
                        Obx(
                          () => Container(
                            height: 48.h,
                            width: 80.h,
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                border: Border.all(
                                    width: 1, color: AppColors.grey)),
                            child: DropdownButtonHideUnderline(
                              child: DropdownButton<String>(
                                value: controller.dropdownValue.value,
                                onChanged: (String? newValue) {
                                  controller.setDropdownValue(newValue!);
                                },
                                items: <String>['+91', '+1', '+44',]
                                    .map((String value) {
                                  return DropdownMenuItem<String>(
                                    alignment: AlignmentDirectional.centerEnd,
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                             height: 48.h,
                             width: 200.h,
                             decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                            
                              borderRadius: BorderRadius.all(Radius.circular(1)),
                             ),
                             child: Padding(
                               padding: const EdgeInsets.all(8.0),
                               child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("87987656788",style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                        color: AppColors.primeryColor
                      )),
                                  Text("Change",style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                        color: AppColors.primeryColor
                      ))
                                ],
                               ),
                             ),
                          ),
                      
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                      Text("Email",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                        color: AppColors.primeryColor
                      )),
                      SizedBox(height: 10,),
                      Container(
                        height: 50,
                        width: 500,
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 1,
                            color: AppColors.grey,
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Example@gmail.com",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                    height: 1.7,
                                    color: AppColors.primeryColor
                                  ),
                            ),
                          ],
                        ),
                      ),
                    SizedBox(
                      height: 5.h,
                    ),Text("City You Drive In",
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium!
                            .copyWith(height: 1.7, color: AppColors.primeryColor)),
                            SizedBox(height: 10,),
                    Obx(
                      () => Container(
                        height: 48.h,
                        width: 500.h,
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            border:
                                Border.all(width: 1, color: AppColors.primeryColor)),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton<String>(
                            value: controller.citydropdownValue.value,
                            onChanged: (String? newValue) {
                              controller.setCityDropdownValue(newValue!);
                            },
                            items:
                                <String>['Nairobi,Africa', 'Cape Town, Africa'].map((String value) {
                              return DropdownMenuItem<String>(
                                alignment: AlignmentDirectional.center,
                                value: value,
                                child: Text(
                                  value,
                                  style: TextStyle(
                                    fontFamily: "SF Pro Display",
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    height: 1.275,
                                    color: Colors.black,
                                  ),
                                ),
                              );
                            }).toList(),
                          ),
                        ),
                      ),
                    ),
                      
                      SizedBox(height: 10,),
                      Text("Documents",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                        color: AppColors.primeryColor
                      )),
                      SizedBox(height: 10,),
                       Container(
                        height: 50,
                        width: 500,
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 1,
                            color: AppColors.grey,
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Update Documents Details",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                    height: 1.7,
                                    color: AppColors.primeryColor
                                  ),
                            ),
                            const Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.black,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 10,),
                      Text("Date Of Birth",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                        color: AppColors.grey
                      )),
                      SizedBox(height: 10,),
                      Container(
                        height: 50,
                        width: 500,
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 1,
                            color: AppColors.grey,
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Enter DOB",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                    height: 1.7,
                                    color: AppColors.primeryColor
                                  ),
                            ),
                          ],
                        ),
                      ),
                ],
              )
            ],
          ),
        ),
       
      )),
     
    );
  }
}
