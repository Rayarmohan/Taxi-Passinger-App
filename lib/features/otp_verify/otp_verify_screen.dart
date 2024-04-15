import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:taxi_passenger_app/utils/color/app_colors.dart';
import 'package:taxi_passenger_app/utils/route/route_name.dart';
import 'package:taxi_passenger_app/widgets/custom_app_bar.dart';
import 'package:taxi_passenger_app/widgets/custom_button.dart';
import 'package:taxi_passenger_app/widgets/custom_images.dart';

class OTPScreen extends StatelessWidget {
  const OTPScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: const SizedBox(),
        leading: const Padding(
          padding: EdgeInsets.all(8.0),
          child: CustomPngImage(
            imageName: "assets/images/arrow_back.png",
            height: 30,
            width: 30,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Verify Code',
                textAlign: TextAlign.center,
                style: Theme.of(context)
                    .textTheme
                    .headlineMedium!
                    .copyWith(height: 1.7, color: AppColors.primeryColor)),
            Text('Please enter the code we just sent to email',
                textAlign: TextAlign.center,
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .copyWith(height: 1.7, color: AppColors.primeryColor)),
            const SizedBox(height: 10),
            Text(
              '+91 89****85',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: AppColors.primeryColor,
                  decoration: TextDecoration.underline),
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(4, (index) => _buildOTPBox(context)),
            ),
            const SizedBox(height: 20),
            TextButton(
              onPressed: () {},
              child: RichText(
                  text: TextSpan(children: [
                TextSpan(
                    text: "Didn’t receive OTP?  ",
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .copyWith(height: 1.7, color: AppColors.grey)),
                TextSpan(
                    text: "Resend code",
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .copyWith(height: 1.7, color: AppColors.primeryColor)),
              ])),
            ),
            const SizedBox(height: 30),
            CustomButton(
              height: 44,
              width: 1.sw,
              onPressed: () {
                Get.toNamed(AppRoute.registration);
              },
              text: "Sign In",
              color: AppColors.primeryColor,
              textColor: AppColors.white,
            )
          ],
        ),
      ),
    );
  }

  Widget _buildOTPBox(BuildContext context) {
    return SizedBox(
      width: 60,
      child: TextFormField(
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        maxLength: 1,
        decoration: InputDecoration(
          counterText: "", // to hide the counter text below the TextField
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 2, color: Colors.grey.shade300),
            borderRadius: BorderRadius.circular(2),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide:
                const BorderSide(width: 2, color: AppColors.primeryColor),
            borderRadius: BorderRadius.circular(2),
          ),
        ),
      ),
    );
  }
}
