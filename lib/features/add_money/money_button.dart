import 'package:flutter/material.dart';
import 'package:taxi_passenger_app/utils/color/app_colors.dart';

class MoneyButton extends StatelessWidget {
  final int amount;
  final double width;

  const MoneyButton({
    super.key,
    required this.amount,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 6, horizontal: 4),
      height: 30,
      width: width, // Use the width passed from the parent
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey[300]!, // Set border color
          width: 1, // Set border width
        ),
      ),
      child: Center(child: Text(amount.toString(), style: TextStyle(color: AppColors.primeryColor),)),
    );
  }
}
