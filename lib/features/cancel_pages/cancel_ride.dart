import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:taxi_passenger_app/features/cancel_pages/cancel_reason.dart';
import 'package:taxi_passenger_app/features/cancel_pages/cancel_sucess.dart';
import 'package:taxi_passenger_app/utils/color/app_colors.dart';
import 'package:taxi_passenger_app/widgets/custom_app_bar.dart';
import 'package:taxi_passenger_app/widgets/custom_button.dart';
import 'package:taxi_passenger_app/widgets/custom_images.dart';

class CancelRideScreen extends StatelessWidget {
  const CancelRideScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(
          title: Text('Cancel Ride',
              style: Theme.of(context)
                  .textTheme
                  .headlineMedium!
                  .copyWith(height: 1.7, color: AppColors.primeryColor)),
          leading: Padding(
            padding: const EdgeInsets.all(8),
            child: GestureDetector(
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
        body: SingleChildScrollView(
          // Wrap with SingleChildScrollView
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(5, 0, 10, 10),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15.0, vertical: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'Please select the reason for cancellation:',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                      fontWeight: FontWeight.w400,
                                      color: AppColors.primeryColor,
                                      fontSize: 12),
                            ),
                          ],
                        ),
                      ),
                      CancelReason(), // Assume this is a widget and not an Expanded
                    ],
                  ),
                ),
                Divider(
                  color: Colors.grey.shade300,
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Other',
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .copyWith(color: AppColors.grey)),
                      const SizedBox(
                          height:
                              10), // Add some space between the label and the text field
                      TextField(
                        maxLines: 8,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors
                                      .grey.shade300), // Light grey border
                              borderRadius: BorderRadius.all(
                                  Radius.circular(20)), // Sharp edges
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.grey
                                      .shade300), // Light grey border for enabled state
                              borderRadius: BorderRadius.zero,
                            ),
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 20),
                            hintText: 'Enter your reason',
                            hintStyle: Theme.of(context)
                                .textTheme
                                .bodySmall!
                                .copyWith(color: AppColors.primeryColor)),
                      ),
                    ],
                  ),
                ),
                CustomButton(
                  height: 44.w,
                  width: 322.h,
                  textColor: AppColors.white,
                  onPressed: () {
                    showModalBottomSheet(
                        context: context,
                        builder: (context) {
                          return CancelSuccess();
                        });
                  },
                  text: "Cancel Ride",
                  color: AppColors.primeryColor,
                )
              ],
            ),
          ),
        ));
  }
}
