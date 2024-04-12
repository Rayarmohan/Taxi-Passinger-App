// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:taxi_passenger_app/utils/color/app_colors.dart';
import 'package:taxi_passenger_app/widgets/custom_Progress_Indicator.dart';
import 'package:taxi_passenger_app/widgets/custom_button.dart';
import 'package:taxi_passenger_app/widgets/custom_images.dart';

class SearchRide extends StatelessWidget {
  const SearchRide({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Icon(
                    size: 20,
                    Icons.arrow_back_ios,
                    color: AppColors.primeryColor,
                  ),
                ),
              )),
        ),
        centerTitle: true,
        title: Text('Book Ride',
            style: Theme.of(context)
                .textTheme
                .bodyLarge!
                .copyWith(color: AppColors.primeryColor)),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle),
                child: Center(
                  child: Icon(
                    size: 20,
                    Icons.phone,
                    color: AppColors.primeryColor,
                  ),
                )),
          )
        ],
      ),
      body: Stack(
        children: [
          const SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: CustomPngImage(
              imageName: 'assets/images/map.png',
              boxFit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 100.0),
            child: Align(
              alignment: Alignment.topCenter,
              child: Column(
                children: [
                  _buildTimer(context),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Padding(
            padding: const EdgeInsets.only(right: 10.0,top: 100),
            child: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle),
                child: Center(
                  child: Icon(
                    size: 21,
                    Icons.warning,
                    color: AppColors.primeryColor,
                  ),
                )),
          ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 200, top: 500),
            child: Align(
              alignment: Alignment.center,
              child: Column(
                children: [
                  Transform.rotate(
                    angle: 360 / 4,
                    child: CustomPngImage(
                      height: 50,
                      width: 50,
                      imageName: 'assets/images/car_map.png',
                      boxFit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 300, left: 60),
            child: Align(
              alignment: Alignment.topLeft,
              child: Column(
                children: [
                  Transform.rotate(
                    angle: 360 / 4,
                    child: CustomPngImage(
                      height: 50,
                      width: 50,
                      imageName: 'assets/images/car_map.png',
                      boxFit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 500, left: 70),
            child: Align(
              alignment: Alignment.topLeft,
              child: Column(
                children: [
                  Transform.rotate(
                    angle: 360 / 3,
                    child: CustomPngImage(
                      height: 50,
                      width: 50,
                      imageName: 'assets/images/car_map.png',
                      boxFit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 300, left: 250),
            child: Align(
              alignment: Alignment.topLeft,
              child: Column(
                children: [
                  Transform.rotate(
                    angle: 360 / 3,
                    child: CustomPngImage(
                      height: 50,
                      width: 50,
                      imageName: 'assets/images/car_map.png',
                      boxFit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 12.0),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: _PassangerRequest(context),
            ),
          ),
        ],
      ),
    );
  }

  Widget _PassangerRequest(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: 40,
        child: Padding(
          padding: const EdgeInsets.only(left: 5.0, right: 5.0),
          child: CustomButton(
            height: 44,
            width: 325,
            onPressed: () {},
            child: Text(
              'Book Ride',
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .copyWith(fontSize: 15, color: AppColors.white),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTimer(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(60)),
            color: Colors.white,
          ),
          height: 90,
          width: 90,
          child: Stack(
            fit: StackFit.expand,
            children: [
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomPngImage(
                      height: 50,
                      width: 50,
                      imageName: 'assets/images/car_front.png',
                      boxFit: BoxFit.contain,
                    ),
                  ],
                ),
              ),
              const CustomCircularProgressIndicator(
                progress: 0.5, // Set progress to 70%
                backgroundColor: Colors.grey, // Background color
                progressColor: AppColors.primeryColor, // Progress color
                strokeWidth: 5.0, // Thickness of the progress indicator
              ),
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text('Searching Ride...',
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: AppColors.primeryColor)),
        SizedBox(
          height: 8,
        ),
        Text('This may take a few seconds...',
            style: Theme.of(context).textTheme.bodySmall!.copyWith(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: AppColors.primeryColor))
      ],
    );
  }
}
