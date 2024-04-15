import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taxi_passenger_app/utils/color/app_colors.dart';
import 'package:taxi_passenger_app/widgets/custom_button.dart';

class CouponCard extends StatelessWidget {
  const CouponCard({
    super.key,
    required this.welcomeText,
    required this.unlockText,
  });

  final String welcomeText;
  final String unlockText;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 208,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.grey,
              width: 0.5,
            ),
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        welcomeText,
                        style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                              color: Colors.black,
                              fontWeight: FontWeight.w400,
                            ),
                      ),
                       Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: Text(
                          unlockText,
                          style: const TextStyle(
                            fontSize: 16.0,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          const CircleAvatar(
                            backgroundColor: AppColors.primeryColor,
                            radius: 20,
                            child: Icon(Icons.percent),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Get 50% OFF",
                            style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                                  color: AppColors.primeryColor,
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              CustomButton(
                height: 44,
                width: 1.sw,
                onPressed: () {},
                color: AppColors.primeryColor,
                child: Text(
                  "Copy Code",
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .copyWith(fontSize: 17, color: Colors.white),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 10,)
      ],
    );
  }
}
