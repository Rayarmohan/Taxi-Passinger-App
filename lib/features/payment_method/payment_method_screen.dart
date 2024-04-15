import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:taxi_passenger_app/features/payment_method/method.dart';
import 'package:taxi_passenger_app/features/payment_method/more_options.dart';
import 'package:taxi_passenger_app/utils/color/app_colors.dart';
import 'package:taxi_passenger_app/utils/route/route_name.dart';
import 'package:taxi_passenger_app/widgets/custom_app_bar.dart';
import 'package:taxi_passenger_app/widgets/custom_button.dart';
import 'package:taxi_passenger_app/widgets/custom_images.dart';

class PaymentMethod extends StatefulWidget {
  const PaymentMethod({super.key});

  @override
  State<PaymentMethod> createState() => _PaymentMethodState();
}

class _PaymentMethodState extends State<PaymentMethod> {
  int groupValue = 1;

  void _handleRadioValueChanged(int? value) {
    setState(() {
      groupValue = value!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: Text('Payment Methods',
            style: Theme.of(context)
                .textTheme
                .headlineMedium!
                .copyWith(height: 1.7, color: AppColors.primeryColor)),
        leading: Padding(
          padding: EdgeInsets.all(8.0),
          child: InkWell(
            onTap: () {},
            child: const CustomPngImage(
              imageName: "assets/images/arrow_back.png",
              height: 30,
              width: 30,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Cash',
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge!
                      .copyWith(height: 1.7, color: AppColors.primeryColor)),
              const SizedBox(
                height: 10,
              ),
              Method(
                singleValue: 1,
                text: 'Cash',
                groupValue: groupValue,
                onChanged: _handleRadioValueChanged,
              ),
              const SizedBox(
                height: 20,
              ),
              Text('Wallet',
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge!
                      .copyWith(height: 1.7, color: AppColors.primeryColor)),
              const SizedBox(
                height: 10,
              ),
              Method(
                singleValue: 2,
                text: 'Wallet',
                groupValue: groupValue,
                onChanged: _handleRadioValueChanged,
              ),
              const SizedBox(
                height: 20,
              ),
              Text('Credit & Debit Card',
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge!
                      .copyWith(height: 1.7, color: AppColors.primeryColor)),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 50,
                width: 500,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 1,
                    color: const Color.fromRGBO(241, 241, 241, 1),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                            height: 30,
                            width: 30,
                            child: const CustomPngImage(
                              imageName: 'assets/images/wallet_logo.png',
                              boxFit: BoxFit.fill,
                            )),
                        const SizedBox(width: 10),
                        Text(
                          'Add Card',
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .copyWith(
                                  height: 1.7,
                                  color: AppColors
                                      .primeryColor, // Ensure color name matches your declaration
                                  fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    const Icon(
                      Icons.arrow_forward_ios,
                      color: AppColors.primeryColor,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text('More Payment Options',
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge!
                      .copyWith(height: 1.7, color: AppColors.primeryColor)),
              const SizedBox(
                height: 10,
              ),
              MoreOptions(),
              SizedBox(
                height: 40,
              ),
              CustomButton(
                height: 50,
                width: MediaQuery.of(context).size.width * 0.83,
                onPressed: () {
                  Get.toNamed(AppRoute.paycash);
                },
                text: "Confirm Payment",
                textColor: Colors.white,
                color: AppColors.primeryColor,
              )
            ],
          ),
        ),
      ),
    );
  }
}
