import 'package:flutter/material.dart';
import 'package:taxi_passenger_app/utils/color/app_colors.dart';
import 'package:taxi_passenger_app/widgets/custom_images.dart';

class Method extends StatelessWidget {
  final int singleValue, groupValue;
  final String text;
  final Function(int?) onChanged;
  final String? logo;

  const Method({
    super.key,
    required this.singleValue,
    required this.groupValue,
    required this.text,
    required this.onChanged,
    this.logo
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 500,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(
          width: 1,
          color: Color.fromRGBO(241, 241, 241, 1),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                  height: 30,
                  width: 30,
                  child: CustomPngImage(
                    imageName: logo ?? 'assets/images/wallet_logo.png',
                    boxFit: BoxFit.contain,
                  )),
              SizedBox(width: 10),
              Text(
                text,
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    height: 1.7,
                    color: AppColors
                        .primeryColor, // Ensure color name matches your declaration
                    fontWeight: FontWeight.w500),
              ),
            ],
          ),
          Radio<int>(
            activeColor: AppColors.primeryColor,
            value: singleValue,
            groupValue: groupValue,
            onChanged: onChanged,
          ),
        ],
      ),
    );
  }
}
