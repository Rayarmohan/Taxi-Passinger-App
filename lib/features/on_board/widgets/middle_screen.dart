import 'package:flutter/material.dart';
import 'package:taxi_passenger_app/utils/color/app_colors.dart';
import 'package:taxi_passenger_app/widgets/custom_images.dart';

class MiddleScreen extends StatelessWidget {
  const MiddleScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      // alignment: AlignmentDirectional.topCenter,
      children: [
        Container(
          height: MediaQuery.of(context).size.height / 2,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(color: AppColors.primeryColor),
        ),
        const Positioned(
          top: 120,
          right: 80,
          left: 80,
          child: Row(
            children: [
              CustomPngImage(
                height: 70,
                width: 200,
                imageName: "assets/images/Logo.png",
                boxFit: BoxFit.fitWidth,
              ),
            ],
          ),
        ),
        Positioned(
          top: 210,
          right: 0,
          left: 0,
          child: Column(
            children: [
              const CustomPngImage(
                height: 343,
                width: 1000,
                imageName: "assets/images/full_view.png",
                boxFit: BoxFit.fitWidth,
              ),
              Text(
                "Your ride, Your Rules",
                style: Theme.of(context).textTheme.headlineMedium,
              )
            ],
          ),
        )
      ],
    );
  }
}
