import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taxi_passenger_app/utils/color/app_colors.dart';
import 'package:taxi_passenger_app/widgets/custom_app_bar.dart';
import 'package:taxi_passenger_app/widgets/custom_images.dart';

class VerifyCodeScreen extends StatelessWidget {
  const VerifyCodeScreen({super.key});

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
        padding:
            const EdgeInsets.only(left: 30, right: 30, top: 150, bottom: 30),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text('Your OTP',
                  textAlign: TextAlign.center,
                  style: Theme.of(context)
                      .textTheme
                      .headlineMedium!
                      .copyWith(height: 1.7, color: AppColors.primeryColor)),
              Text('Please enter the code we just sent to ',
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
              SizedBox(height: 100.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: List.generate(4, (index) => _buildOTPBox(context)),
              ),
              SizedBox(height: 140.h),
              Center(
                child: TextButton(
                  onPressed: () {},
                  style: const ButtonStyle(alignment: Alignment.center),
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "Didn’t receive OTP?\n",
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .copyWith(color: AppColors.grey, fontSize: 15),
                        ),
                        TextSpan(
                          text: "Resend code",
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .copyWith(
                                  color: AppColors.primeryColor,
                                  decoration: TextDecoration.underline,
                                  fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
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
            borderSide: BorderSide(width: 2, color: Colors.grey.shade200),
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
