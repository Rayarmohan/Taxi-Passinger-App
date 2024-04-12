import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:taxi_passenger_app/features/ride/ride_founded2.dart';

import '../../utils/color/app_colors.dart';
import '../../widgets/custom_app_bar.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_images.dart';
import '../chat/chat.dart';

class RideFounded2 extends StatelessWidget {
  const RideFounded2({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(360, 690)); // Initialize ScreenUtil with design size

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar:  AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Container(
              height: 20,
              width: 20,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(30))),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.only(left: 6),
                  child: Icon(
                    Icons.arrow_back_ios,
                    color: AppColors.primeryColor,
                    size: 18,
                  ),
                ),
              )),
        ),
        centerTitle: true,
        title: Text('Customer Location',
            style: Theme.of(context)
                .textTheme
                .bodyLarge!
                .copyWith(color: AppColors.primeryColor)),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.47, // Extended height
                  width: MediaQuery.of(context).size.width,
                  child: CustomPngImage(
                    imageName: 'assets/images/ridefounded2.png',
                    boxFit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  right: 10,
                  bottom: 10,
                  child: CustomPngImage(
                    imageName: "assets/images/gps.png",
                    height: 50,
                    width: 50,
                    boxFit: BoxFit.contain,
                  ),
                ),
                Positioned(
                  right: 10,
                  top: 33,
                  child: Container(
                    padding: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.call,
                      color: AppColors.primeryColor,
                      size: 28,
                    ),
                  ),
                ),
                Positioned(
                  right: 10,
                  top: 80,
                  child: Container(
                    padding: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.warning_amber_rounded,
                      color: AppColors.primeryColor,
                      size: 29,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                children: [
                  const SizedBox(height: 16.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Ride Founded", style: Theme.of(context).textTheme.titleSmall!.copyWith(color: AppColors.primeryColor, fontSize: 18)),
                      Text("5 min away", style: Theme.of(context).textTheme.titleSmall!.copyWith(color: Colors.grey, fontWeight: FontWeight.w300, fontSize: 14)),
                    ],
                  ),
                  const SizedBox(height: 16.0),
                  const Divider(
                    height: 16.0,
                    thickness: 0.8,
                    color: Colors.grey,
                  ),
                  SizedBox(height: 16.0,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        CircleAvatar(
                          backgroundImage: const AssetImage("assets/images/josephdeo.png"),
                          radius: 30,
                        ),
                        const SizedBox(width: 8.0),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Joseph Deo", style: Theme.of(context).textTheme.titleMedium!.copyWith(color: AppColors.primeryColor, fontSize: 18.0)),
                              Text("Swift", style: Theme.of(context).textTheme.bodySmall!.copyWith(color: AppColors.primeryColor, fontSize: 14.0)),
                            ],
                          ),
                        ),
                        InkWell(
                          onTap: (){
                            Get.to(() => ChatPage());
                          },
                          child: Container(
                            padding: const EdgeInsets.all(8.0),
                            decoration: BoxDecoration(
                              color: AppColors.primeryColor,
                              shape: BoxShape.circle,
                            ),
                            child: Icon(
                              Icons.message_rounded,
                              color: Colors.white,
                              size: 24,
                            ),
                          ),
                        ),
                        const SizedBox(width: 9,),
                        Container(
                          padding: const EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                            color: Colors.green,
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            Icons.phone,
                            color: Colors.white,
                            size: 24,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(Icons.radio_button_checked, size: 20.0),
                            SizedBox(
                              height: 40,
                              child: Image.asset('assets/images/dottedline.png'),
                            ),
                            Icon(Icons.location_on, size: 18.0),
                          ],
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  '219 Florida Rd, Durban',
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleMedium!
                                      .copyWith(height: 1.7, color: AppColors.primeryColor),
                                ),
                                const SizedBox(
                                  height: 7,
                                ),

                                Divider(color: Colors.grey[200], thickness: 0.8,),
                                const SizedBox(
                                  height: 7,
                                ),
                                Text(
                                  'KwaZulu-Natal, Cape Town',
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleMedium!
                                      .copyWith(height: 1.7, color: AppColors.primeryColor),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 25.0, ),
                          child: Container(
                            color: AppColors.primeryColor,
                            width: 73,
                            height: 29,
                            child: Text(
                              ' 10 min trip ',
                              style: Theme.of(context)
                                  .textTheme
                                  .titleSmall!
                                  .copyWith(height: 1.7, color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 9.0),
                  Divider(
                    height: 16.0,
                    thickness: 0.8,
                    color: Colors.grey,
                  ),
                  const SizedBox(height: 9.0,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          const SizedBox(width: 8),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Rate per", style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: AppColors.primeryColor, fontSize: 15, )),
                              const SizedBox(height: 5,),
                              Row(
                                children: [
                                  Image.asset(
                                    'assets/images/walletnew.png', // Replace with your actual image path
                                    width: 24, // Set the width to fit your design
                                    height: 24, // Set the height to fit your design
                                    color: AppColors.primeryColor, // Optional: Apply a color filter if needed
                                  ),
                                  Text(
                                    "Rs 120.5",
                                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: Colors.black, fontSize: 12),
                                  ),
                                ],
                              ),

                            ],
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Car Number", style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: AppColors.primeryColor, fontSize: 15)),
                          const SizedBox(height: 5,),
                          Text("GR-56-6788", style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: Colors.black, fontSize: 12)),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("No. of seats", style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: AppColors.primeryColor, fontSize: 15)),
                          const SizedBox(height: 5,),
                          Text("4 seats", style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: Colors.black, fontSize: 12)),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 25),
                  CustomButton(
                    height: 44,
                    width: 1.sw,
                    onPressed: () {
                      Get.to(() => RideFounded2());
                    },
                    text: "Cancel Ride",
                    textColor: Colors.white,
                    color: AppColors.primeryColor,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
