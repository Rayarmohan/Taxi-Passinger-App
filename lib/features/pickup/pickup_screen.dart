import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:taxi_passenger_app/features/home/widgets/custom_app_bar.dart';
import 'package:taxi_passenger_app/features/saved_places/widgets/custom_searchbar.dart';
import 'package:taxi_passenger_app/utils/color/app_colors.dart';
import 'package:taxi_passenger_app/widgets/custom_button.dart';
import 'package:taxi_passenger_app/widgets/custom_images.dart';

class PickupScreen extends StatelessWidget {
  const PickupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: TransparentAppBar(
        title: Text(
          "Pick-Up",
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
              imageName: 'assets/images/map.png',
              boxFit: BoxFit.cover,
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(30, 70, 30, 0),
            child: CustomSearchBar(
                hintText: '6391 Elgin, St.Celina, Delawa..',
                leadingIcon: Icon(
                  Icons.search,
                  color: AppColors.primeryColor,
                ),
                trailingIcon: Icon(
                  Icons.close_rounded,
                  color: AppColors.primeryColor,
                )),
          ),
          const Align(
            alignment: Alignment.center,
            child: CustomPngImage(
              height: 30,
              width: 30,
              imageName: 'assets/images/location_point.png',
              boxFit: BoxFit.contain,
            ),
          ),
          const Positioned(
            bottom: 80,
            right: 20,
            child: Align(
              alignment: Alignment.bottomRight,
              child: CustomPngImage(
                height: 50,
                width: 50,
                imageName: 'assets/images/target_icon3.png',
                boxFit: BoxFit.contain,
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            left: 0,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 40,
                child: Padding(
                  padding: const EdgeInsets.only(left: 5.0, right: 5.0),
                  child: CustomButton(
                    onPressed: () {},
                    child: Text(
                      'Confirm Location',
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium!
                          .copyWith(fontSize: 15, color: AppColors.white),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
