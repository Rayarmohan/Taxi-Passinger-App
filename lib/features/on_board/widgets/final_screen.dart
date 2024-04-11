import 'package:flutter/material.dart';
import 'package:taxi_passenger_app/widgets/custom_images.dart';

class FinalScreen extends StatelessWidget {
  const FinalScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      // alignment: AlignmentDirectional.topStart,
      children: [
        CustomSvgImage(
          height: MediaQuery.of(context).size.height / 2,
          width: MediaQuery.of(context).size.width,
          imageName: "RectangleZ",
          boxFit: BoxFit.fitWidth,
        ),
        const Positioned(
          top: 120,
          right: 60,
          left: 60,
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
              const CustomPngImage(
                height: 343,
                width: 1000,
                imageName: "assets/images/back_view.png",
                boxFit: BoxFit.fitWidth,
              ),
              Text(
                "Your Journey, Start Here",
                style: Theme.of(context).textTheme.headlineMedium,
              )
            ],
          ),
        )
      ],
    );
  }
}
