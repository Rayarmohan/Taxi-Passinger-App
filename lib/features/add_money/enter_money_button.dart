import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taxi_passenger_app/utils/color/app_colors.dart';

class EnterMoneyButton extends StatelessWidget {
  const EnterMoneyButton({
    super.key,
    this.height,
    this.width,
    this.color,
    this.text,
    this.onPressed,
    this.textColor,
    this.child,
  });

  final double? width, height;
  final Color? color, textColor;
  final String? text;
  final Function()? onPressed;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 0.83.sw,
      child: MaterialButton(
        onPressed: onPressed,
        minWidth: width ?? 0.5.sw, // Stretch to the full width
        height: height ?? 50.h, // Use ScreenUtil for consistent height
        color: color ?? AppColors.primeryColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(1.r)), // Use ScreenUtil for consistent radius
        padding: EdgeInsets.symmetric(horizontal: 16.w), // Apply horizontal padding
        child: Container(
          alignment: Alignment.centerLeft, // Align the text to the left
          child: child ?? Text(
            text ?? '', // Fallback to empty string if text is null
            style: Theme.of(context)
                .textTheme
                .bodyMedium!
                .copyWith(color: textColor ?? AppColors.white), // Fallback to a default color if textColor is null
          ),
        ),
      ),
    );
  }
}
