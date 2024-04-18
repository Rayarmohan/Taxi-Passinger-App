import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taxi_passenger_app/features/add_money/enter_money_button.dart';
import 'package:taxi_passenger_app/features/add_money/grid_view.dart';

import 'package:taxi_passenger_app/utils/color/app_colors.dart';
import 'package:taxi_passenger_app/widgets/custom_app_bar.dart';
import 'package:taxi_passenger_app/widgets/custom_button.dart';
import 'package:taxi_passenger_app/widgets/custom_images.dart';

class AddMoneytoWallet extends StatelessWidget {
  const AddMoneytoWallet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: Text('Add Money',
            style: Theme.of(context)
                .textTheme
                .headlineMedium!
                .copyWith(height: 1.7, color: AppColors.primeryColor)),
        leading: const Padding(
          padding: EdgeInsets.all(8),
          child: CustomPngImage(
            imageName: "assets/images/arrow_back.png",
            height: 30,
            width: 30,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
        child: Center(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(20),
                height: MediaQuery.of(context).size.height * (1 / 3.3),
                width: MediaQuery.of(context).size.width * 0.83,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey[300]!, // Set border color
                    width: 1, // Set border width
                  ),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Wallet Balance',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(color: AppColors.primeryColor)),
                            Text('Rs. 12000',
                                style: Theme.of(context)
                                    .textTheme
                                    .headlineMedium!
                                    .copyWith(
                                        height: 1.7,
                                        color: AppColors.primeryColor,
                                        fontWeight: FontWeight.bold))
                          ],
                        ),
                        Container(
                            height: 30,
                            width: 30,
                            child: const CustomPngImage(
                              imageName: 'assets/images/wallet_logo.png',
                              boxFit: BoxFit.fill,
                            ))
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Container(height: 100, child: MoneyGrid())
                  ],
                ),
              ),
              EnterMoneyButton(
                height: 50,
                width: 0.5.sw,
                onPressed: () {},
                text: "Rs. Enter Amount",
                textColor: Colors.white,
                color: AppColors.primeryColor,
              ),
              SizedBox(
                height: 20,
              ),
              CustomButton(
                height: 50,
                width: MediaQuery.of(context).size.width * 0.83,
                onPressed: () {},
                text: "Add Money",
                textColor: Colors.white,
                color: AppColors.kGreen,
              )
            ],
          ),
        ),
      ),
    );
  }
}
