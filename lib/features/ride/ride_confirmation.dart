import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:taxi_passenger_app/features/Ride/ride_flow_static.dart';
import '../../utils/color/app_colors.dart';
import '../../widgets/custom_app_bar.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_images.dart';

class RideConfirmationPage extends StatelessWidget {
  const RideConfirmationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80.0),
        child: Column(
          children: [
            const SizedBox(height: 20.0),
            CustomAppBar(
              title: const Text(
                "",
              ),
              leading: const Padding(
                padding: EdgeInsets.all(8.0),
                child: CustomPngImage(
                  imageName: "assets/images/arrow_back.png",
                  height: 30,
                  width: 30,
                ),
              ),
            ),
          ],
        ),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 150,
                ),
                const CircleAvatar(
                  backgroundColor: AppColors.primeryColor,
                  radius: 50,
                  child: Icon(
                    Icons.check,
                    color: Colors.white,
                    size: 60,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text("Congratulations! Ride Accepted By Eric",
                    textAlign: TextAlign.center,
                    style: Theme.of(context)
                        .textTheme
                        .headlineMedium!
                        .copyWith(height: 1.7, color: AppColors.primeryColor)),
                const SizedBox(
                  height: 15,
                ),
                Text("Your ride booked successfully,",
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .copyWith(height: 1.7, color: AppColors.primeryColor)),
                Text("You can check your booking on the \"Bookings\".",
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .copyWith(height: 1.7, color: AppColors.primeryColor)),
                const SizedBox(
                  height: 140,
                ),
                CustomButton(
                  height: 44,
                  width: 1.sw,
                  onPressed: () {},
                  text: "View E-Receipt",
                  textColor: Colors.white,
                  color: AppColors.primeryColor,
                ),
                const SizedBox(
                  height: 10,
                ),
                InkWell(
                  onTap: () {
                    Get.to(() => const RideFlowStatic());
                  },
                  child: Text(
                    "Track Order",
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .copyWith(color: AppColors.primeryColor),
                  ),
                )
              ],
            ),
          ),
        ),
      )),
    );
  }
}
