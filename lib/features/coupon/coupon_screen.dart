import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:taxi_passenger_app/features/coupon/coupon_controller.dart';
import 'package:taxi_passenger_app/features/coupon/widget/coupon_card.dart';
import 'package:taxi_passenger_app/utils/color/app_colors.dart';
import 'package:taxi_passenger_app/widgets/custom_app_bar.dart';
import 'package:taxi_passenger_app/widgets/custom_button.dart';
import 'package:taxi_passenger_app/widgets/custom_images.dart';
import 'package:taxi_passenger_app/widgets/custom_text_field.dart';

class CouponScreen extends StatelessWidget {
  const CouponScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final CouponController controller = Get.put(CouponController());
    return Scaffold(
      appBar: CustomAppBar(
        title: Text(
          'Coupon',
          style: Theme.of(context)
              .textTheme
              .headlineMedium!
              .copyWith(color: AppColors.primeryColor),
        ),
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
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
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Coupons for you",
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .copyWith(color: AppColors.primeryColor, fontSize: 20),
              ),
              const SizedBox(height: 10),
              ListView(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                children: const [
                  CouponCard(
                    welcomeText: "WELCOME200",
                    unlockText: "Add items worth Rs. 250 more to unlock",
                  ),
                  CouponCard(
                    welcomeText: "WELCOME200",
                    unlockText: "Add items worth Rs. 250 more to unlock",
                  ),
                  CouponCard(
                    welcomeText: "WELCOME200",
                    unlockText: "Add items worth Rs. 250 more to unlock",
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Expanded(
                    child: CustomTextFieldInt(
                      keyboardType: TextInputType.multiline,
                      controller: controller.couponController,
                      hint: 'Promo Code',
                    ),
                  ),
                  CustomButton(
                    height: 44,
                    width: 1.sw * 0.3, // You can adjust the width as needed
                    onPressed: () {},
                    color: AppColors.kGreen,
                    child: Text(
                      "Apply",
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium!
                          .copyWith(fontSize: 17, color: Colors.white),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              CustomButton(
                height: 44,
                width: 1.sw,
                onPressed: () {},
                color: AppColors.primeryColor,
                child: Text(
                  "Continue",
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .copyWith(fontSize: 17, color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
