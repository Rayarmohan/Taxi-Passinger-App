import 'package:flutter/material.dart';
import 'package:taxi_passenger_app/utils/color/app_colors.dart';
import 'package:taxi_passenger_app/widgets/custom_images.dart';

class NotificationContainer extends StatelessWidget {
  final bool showBorder;
  const NotificationContainer({super.key,this.showBorder = false,});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 97,
          width: MediaQuery.sizeOf(context).width,
          decoration: BoxDecoration(
            border: showBorder ? Border.all(
              color: Colors.grey.withOpacity(0.2), // Border color
              width: 2, // Border width
            ) : null // Optional: Use this to round the corners if needed
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text("1h",
                        style: Theme.of(context)
                            .textTheme
                            .labelSmall!
                            .copyWith(height: 1.7, color: AppColors.grey,fontWeight: FontWeight.w500)),
                  ],
                ),
              ),
              ListTile(
                leading: const CustomPngImage(
                    imageName: "assets/images/check_icon.png",
                    height: 36,
                    width: 36,
                    boxFit: BoxFit.contain,
                  ),
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Ride Request from Joshua",
                        style: Theme.of(context)
                            .textTheme
                            .titleLarge!
                            .copyWith(height: 1.7, color: AppColors.primeryColor,fontSize: 14)),
                            SizedBox(height: 4,)
                  ],
                ),
                subtitle:  Text(
                  textAlign: TextAlign.justify,
                    "Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed",
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .copyWith(
                    fontSize: 12,
                      fontWeight: FontWeight.w400,
                      height: 1.7, color: AppColors.primeryColor),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 5,)
      ],
    );
  }
}
