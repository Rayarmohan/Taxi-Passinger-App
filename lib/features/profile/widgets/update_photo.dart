import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taxi_passenger_app/utils/color/app_colors.dart';

class ProfileUpdate extends StatelessWidget {
  final String imagePath;
  final VoidCallback? onUpdate;

  const ProfileUpdate({
    required this.imagePath,
    required this.onUpdate,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          width: 116.h,
          height: 116.h,
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
          ),
          child: Image.asset(
            imagePath,
            fit: BoxFit.cover,
            height: 50,
            width: 50,
          ),
        ),
        Positioned(
          bottom: 10,
          right: -2,
          child: InkWell(
            onTap: onUpdate,
            child: Container(
              padding: const EdgeInsets.all(2),
              width: 32,
              height: 32,
              decoration: BoxDecoration(
                color: AppColors.primeryColor,
                shape: BoxShape.circle,
                border: Border.all(width: 2, color: Colors.white),
              ),
              child: const Icon(
                Icons.edit,
                color: Colors.white,
                size: 15,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
