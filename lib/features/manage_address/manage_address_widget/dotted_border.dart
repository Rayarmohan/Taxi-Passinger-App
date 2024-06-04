import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taxi_passenger_app/utils/color/app_colors.dart';


class DottedBorderContainer extends StatelessWidget {
  final VoidCallback? onUploadPressed;

  const DottedBorderContainer({super.key, this.onUploadPressed});

  @override
  Widget build(BuildContext context) {
    return DottedBorder(
      borderType: BorderType.RRect,
      radius: const Radius.circular(1),
      dashPattern: [8, 4],
      strokeWidth: 1,
      color: AppColors.primeryColor,
      child: InkWell(
        onTap: onUploadPressed,
        child: Container(
          width: 2.sw,
          height: 40.h,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("+ Add New Address",
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .copyWith(height: 1.7, color: AppColors.primeryColor,fontSize: 17))
              ],
            ),
          ),
        ),
      ),
    );
  }
}

