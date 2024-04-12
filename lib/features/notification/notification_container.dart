import 'package:flutter/material.dart';
import 'package:taxi_passenger_app/utils/color/app_colors.dart';

class NotificationContainer extends StatelessWidget {
  const NotificationContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 125,
          width: MediaQuery.sizeOf(context).width,
          decoration: BoxDecoration(
            border: Border.all(
              color: AppColors.grey, // Border color
              width: 1, // Border width
            ), // Optional: Use this to round the corners if needed
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text("1h",
                        style: Theme.of(context)
                            .textTheme
                            .labelSmall!
                            .copyWith(height: 1.7, color: AppColors.grey,fontWeight: FontWeight.w500)),
                  ],
                ),
                ListTile(
                  leading: const CircleAvatar(
                    backgroundColor: AppColors.primeryColor,
                    radius: 30,
                    child: Icon(Icons.done),
                  ),
                  title: Text("Ride Request from Joshua",
                      style: Theme.of(context)
                          .textTheme
                          .titleLarge!
                          .copyWith(height: 1.7, color: AppColors.primeryColor)),
                  subtitle: const Text(
                      "Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed"),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 10,)
      ],
    );
  }
}
