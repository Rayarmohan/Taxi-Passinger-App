// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taxi_passenger_app/utils/color/app_colors.dart';
import 'package:taxi_passenger_app/widgets/custom_button.dart';

class CancelSuccess extends StatelessWidget {
  const CancelSuccess({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300, // Adjust the height as needed
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 30,),
          Container(
            height: 65,
            width: 65,
            padding: EdgeInsets.all(4), // Add some padding around the icon
            decoration: BoxDecoration(
              color: AppColors.primeryColor, // Set the background color
              shape: BoxShape.circle// Optional: Add rounded corners
            ),
            child: const Icon(
              Icons.close_sharp,
              color: Colors.white,
              size: 45,
            ), // Set the icon color to contrast with the background
          ),
          SizedBox(
            height: 10,
          ),
          Text('Booking Cancelled Successfully!',
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge!
                  .copyWith(
                    
                    height: 1.7, color: AppColors.primeryColor)),
          SizedBox(
            height: 10,
          ),
          Text(
            'Your booking with CRN #854HG23\nhas been cancelled successfully',
            textAlign: TextAlign.center,
            style: TextStyle(color: AppColors.primeryColor),
          ),
          SizedBox(
            height: 30,
          ),
          CustomButton(
            height: 44.h,
            width: 325.w,
            onPressed: () {
            },
            textColor: AppColors.white,
            text: "Got It",
            color: AppColors.primeryColor,
          )
        ],
      ),
    );
  }
}