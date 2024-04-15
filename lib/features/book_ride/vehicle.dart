import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:taxi_passenger_app/utils/color/app_colors.dart';
import 'package:taxi_passenger_app/widgets/custom_images.dart';

class VehicleInfo extends StatelessWidget {
  final int index;
  VehicleInfo({super.key, required this.index});

  Map<String, List> carName = {
    'Swift': ['Rs. 104.0', '4 seats capacity'],
    'Sedan': ['Rs. 84.0', '4 seats capacity'],
    'Nano': ['Rs. 50.0', '3 seats capacity']
  };

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 115,
      width: 150,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          width: 1,
          color: AppColors.primeryColor,
        ),
        boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5), // Shadow color with some transparency
                  spreadRadius: 1, // Extent of the shadow
                  blurRadius: 6, // How "blurred" the shadow should be
                  offset: Offset(0, 4), // Horizontal and vertical shift of the shadow
                ),
              ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              height: 50,
              width: 50,
              child: CustomPngImage(
                imageName: 'assets/images/caricon.png',
                boxFit: BoxFit.contain,
              )),
          Divider(
            color: AppColors.primeryColor,
            thickness: 1,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(carName.keys.toList()[index]),
                Text(carName[carName.keys.toList()[index]]?[0],
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          height: 1.7,
                          color: AppColors.primeryColor,
                        ))
              ],
            ),
          ), Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(carName[carName.keys.toList()[index]]?[1],
                      style: Theme.of(context).textTheme.titleSmall!.copyWith(
                            color: AppColors.primeryColor,
                            fontWeight: FontWeight.normal
                          )),
          )
        ],
      ),
    );
  }
}
