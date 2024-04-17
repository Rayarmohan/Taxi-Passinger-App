import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:taxi_passenger_app/features/login/widgets/country_code_field.dart';
import 'package:taxi_passenger_app/utils/color/app_colors.dart';
import 'package:taxi_passenger_app/utils/route/route_name.dart';
import 'package:taxi_passenger_app/widgets/custom_button.dart';
import 'package:taxi_passenger_app/widgets/custom_text_field.dart';

import 'login_controller.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final LoginController controller = Get.put(LoginController());
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Sign In",
                    style: Theme.of(context)
                        .textTheme
                        .headlineMedium!
                        .copyWith(height: 1.7),
                  ),
                  Text("Hi! Welcome back, you’ve been missed",
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          height: 1.7, color: AppColors.primeryColor)),
                  SizedBox(
                    height: 80.h,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Phone Number",
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .copyWith(height: 1.7, color: AppColors.grey)),
                      const PhoneNumberField()
                    ],
                  ),
                  SizedBox(
                    height: 80.h,
                  ),
                  CustomButton(
                    height: 44,
                    width: 1.sw,
                    onPressed: () {
                      Get.toNamed(AppRoute.otpscreen);
                    },
                    text: "Sign In",
                    textColor: AppColors.white,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: RichText(
                        text: TextSpan(children: [
                      TextSpan(
                          text: "Don’t have an account? ",
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .copyWith(
                                  decoration: TextDecoration.underline,
                                  height: 1.7,
                                  color: AppColors.grey)),
                      TextSpan(
                        text: "Sign Up",
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            decorationColor: AppColors.primeryColor,
                            decoration: TextDecoration.underline,
                            height: 1.7,
                            color: AppColors.primeryColor),
                      ),
                    ])),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
