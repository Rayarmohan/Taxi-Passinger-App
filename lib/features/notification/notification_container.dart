import 'package:flutter/material.dart';
import 'package:taxi_passenger_app/utils/color/app_colors.dart';

class NotificationContainer extends StatelessWidget {
  const NotificationContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 110,
          width: MediaQuery.sizeOf(context).width,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.grey.withOpacity(0.2), // Border color
              width: 2, // Border width
            ), // Optional: Use this to round the corners if needed
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
                leading: const CircleAvatar(
                  backgroundColor: AppColors.primeryColor,
                  radius: 30,
                  child: Icon(Icons.done,color: Colors.white),
                ),
                title: Text("Ride Request from Joshua",
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge!
                        .copyWith(height: 1.7, color: AppColors.primeryColor)),
                subtitle:  Text(
                  textAlign: TextAlign.justify,
                    "Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed",
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall!
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
