import 'package:flutter/material.dart';
import 'package:taxi_passenger_app/utils/color/app_colors.dart';
import 'package:taxi_passenger_app/widgets/custom_images.dart';

class AboutTab extends StatelessWidget {
  const AboutTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "About",
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                height: 1.7,
                color: AppColors.primeryColor,
                fontSize: 16,
                fontWeight:
                    FontWeight.w500), // Replace with AppColors.primeryColor
          ),
          Text(
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled",
            style: Theme.of(context).textTheme.labelLarge!.copyWith(
                height: 1.7,
                color: AppColors.primeryColor,
                fontWeight: FontWeight.w400,
                fontSize: 14), // Replace with AppColors.primeryColor
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            "Driver Contact",
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                height: 1.7,
                color: AppColors.primeryColor,
                fontSize: 16,
                fontWeight:
                    FontWeight.w500), // Replace with AppColors.primeryColor
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              CircleAvatar(
                radius: 29.5,
                child: Container(
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage("assets/images/driverpic.png"),
                      fit: BoxFit
                          .fitHeight, // This will make the image fit properly
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Joseph Deo",
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        height: 1.7,
                        color: AppColors.primeryColor,
                        fontSize: 16), // Replace with AppColors.primeryColor
                  ),
                  Text(
                    "Driver",
                    style: Theme.of(context).textTheme.labelLarge!.copyWith(
                        height: 1.7,
                        color: AppColors.primeryColor,
                        fontWeight: FontWeight.w400,
                        fontSize: 14), // Replace with AppColors.primeryColor
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.only(left: 100.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomPngImage(
                      imageName: "assets/images/circular_message.png",
                      height: 41,
                      width: 41,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    CustomPngImage(
                      imageName: "assets/images/circular_phone.png",
                      height: 41,
                      width: 41,
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            "Car Details",
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                height: 1.7,
                color: AppColors.primeryColor,
                fontSize: 16,
                fontWeight:
                    FontWeight.w500), // Replace with AppColors.primeryColor
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Car Model",
                style: Theme.of(context).textTheme.labelLarge!.copyWith(
                    height: 1.7,
                    color: AppColors.primeryColor,
                    fontWeight: FontWeight.w400,
                    fontSize: 14), // Replace with AppColors.primeryColor
              ),
              Text(
                "Maruti Suzuki Swift",
                style: Theme.of(context).textTheme.labelLarge!.copyWith(
                    height: 1.7,
                    color: AppColors.primeryColor,
                    fontWeight: FontWeight.w400,
                    fontSize: 14), // Replace with AppColors.primeryColor
              ),
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Car Number",
                style: Theme.of(context).textTheme.labelLarge!.copyWith(
                    height: 1.7,
                    color: AppColors.primeryColor,
                    fontWeight: FontWeight.w400,
                    fontSize: 14), // Replace with AppColors.primeryColor
              ),
              Text(
                "GR-76-6598",
                style: Theme.of(context).textTheme.labelLarge!.copyWith(
                    height: 1.7,
                    color: AppColors.primeryColor,
                    fontWeight: FontWeight.w400,
                    fontSize: 14), // Replace with AppColors.primeryColor
              ),
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Car Color",
                style: Theme.of(context).textTheme.labelLarge!.copyWith(
                    height: 1.7,
                    color: AppColors.primeryColor,
                    fontWeight: FontWeight.w400,
                    fontSize: 14), // Replace with AppColors.primeryColor
              ),
              Text(
                "Blue",
                style: Theme.of(context).textTheme.labelLarge!.copyWith(
                    height: 1.7,
                    color: AppColors.primeryColor,
                    fontWeight: FontWeight.w400,
                    fontSize: 14), // Replace with AppColors.primeryColor
              ),
            ],
          ),
        ],
      ),
    );
  }
}
