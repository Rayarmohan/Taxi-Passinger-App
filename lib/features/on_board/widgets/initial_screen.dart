import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taxi_passenger_app/widgets/custom_images.dart';

class InitialScreen extends StatelessWidget {
  const InitialScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.topEnd,
      children: [
        CustomSvgImage(
          height: MediaQuery.of(context).size.height / 2,
          width: MediaQuery.of(context).size.width,
          imageName: "RectangleX",
          boxFit: BoxFit.fitWidth,
        ),
        const Positioned(
          top: 120,
          right: 0,
          left: 150,
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
          top: 190,
          right: 0,
          left: 0,
          child: Column(
            children: [
              CustomPngImage(
                height: 343.h,
                width: 1000.w,
                imageName: "assets/images/side_view.png",
                boxFit: BoxFit.fitWidth,
              ),
              Text(
                "Your City, Your Ride",
                style: Theme.of(context).textTheme.headlineMedium,
              )
            ],
          ),
        )
      ],
    );
  }
}
