import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:taxi_passenger_app/features/ride/ride_confirmation.dart';

import '../../utils/color/app_colors.dart';
import '../../widgets/custom_app_bar.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_images.dart';

class PayCash extends StatelessWidget {
  const PayCash({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: Text(
          "Pay Cash",
          style: Theme.of(context)
              .textTheme
              .headlineLarge!
              .copyWith(height: 1.7, color: AppColors.primeryColor, fontSize: 24),
        ),
        leading: Padding(
          // Removed const
          padding: EdgeInsets.all(8.0),
          child: CustomPngImage(
            imageName: "assets/images/arrow_back.png",
            height: 30,
            width: 30,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20.0), // Removed const
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  // Removed const
                  height: 80,
                ),
                CircleAvatar(
                  // Removed const
                  backgroundColor: AppColors.primeryColor,
                  radius: 60,
                  child: Icon(
                    Icons.account_balance_wallet,
                    size: 60,
                    color: Colors.white,
                  ),
                ),
                Text("Wallet",
                    style: Theme.of(context)
                        .textTheme
                        .headlineSmall!
                        .copyWith(height: 1.7, color: AppColors.primeryColor)),
                SizedBox(
                  // Removed const
                  height: 20,
                ),
                Padding(
                  padding: EdgeInsets.all(8.0), // Removed const
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Column(
                        // Removed const
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
                          padding: EdgeInsets.only(left: 8.0), // Removed const
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
                              SizedBox(
                                // Removed const
                                height: 7,
                              ),
                              Divider(color: Color(0xFF0A2B4C),thickness: 1.0,),
                              SizedBox(
                                // Removed const
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
                        padding: const EdgeInsets.only(top: 25.0, ), // Removed const
                        child: Container(
                          color: AppColors.primeryColor,
                          width: 73,
                          height: 29,
                          child: Text(
                            ' 10 min trip ',
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall!
                                .copyWith(height: 1.7, color: AppColors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  // Removed const
                  height: 40,
                ),
                Stack(children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Container(
                      color: AppColors.primeryColor,
                      height: 80,
                      width: 345,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            // Removed const
                            padding: EdgeInsets.only(left: 45.0),
                            child: CircleAvatar(
                              radius: 25,
                              backgroundImage: AssetImage("assets/images/propic.png"),
                            ),
                          ),
                          SizedBox(
                            // Removed const
                            width: 20,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                "Jessica",
                                style: Theme.of(context)
                                    .textTheme
                                    .headlineSmall!
                                    .copyWith(
                                  color: AppColors.white,
                                  fontSize: 18,
                                ),
                              ),
                              Text(
                                "Cash payment",
                                style: Theme.of(context)
                                    .textTheme
                                    .displaySmall!
                                    .copyWith(
                                  color: AppColors.white,
                                  fontSize: 9,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    // Removed const
                    left: -20,
                    top: 20,
                    child: CircleAvatar(
                      backgroundColor: AppColors.white,
                    ),
                  ),
                  Positioned(
                    // Removed const
                    right: -20,
                    top: 20,
                    child: CircleAvatar(
                      backgroundColor: AppColors.white,
                    ),
                  )
                ]),
                SizedBox(
                  // Removed const
                  height: 15,
                ),
                Container(
                  height: 40,
                  width: 370,
                  color: AppColors.primeryColor,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 10.0), // Removed const
                        child: Text(
                          "Total Amount",
                          style: Theme.of(context)
                              .textTheme
                              .displaySmall!
                              .copyWith(height: 1.7, color: AppColors.white, fontSize: 14),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 10.0), // Removed const
                        child: Text(
                          "Rs 120.5",
                          style: Theme.of(context)
                              .textTheme
                              .displaySmall!
                              .copyWith(height: 1.7, color: AppColors.white, fontSize: 14),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 60), // Removed const
                CustomButton(
                  height: 44,
                  width: 1.sw,
                  onPressed: () {
                    Get.to(() => RideConfirmationPage());
                  },
                  text: ("Cash Paid"),
                  textColor: Colors.white,
                  color: Colors.green,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
