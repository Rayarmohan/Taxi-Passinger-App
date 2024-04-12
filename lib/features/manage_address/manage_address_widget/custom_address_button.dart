// ignore_for_file: use_super_parameters

import 'package:flutter/material.dart';
import 'package:taxi_passenger_app/utils/color/app_colors.dart';

class AddressInputField extends StatelessWidget {
  const AddressInputField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: 6,
      decoration: InputDecoration(
        hintText: 'Enter Address',
        hintStyle: Theme.of(context).textTheme.bodyMedium!.copyWith(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: AppColors.primeryColor,
        ),
       
        border: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black54),
          borderRadius: BorderRadius.zero, 
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black54),
          borderRadius: BorderRadius.zero, 
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.primeryColor),
          borderRadius: BorderRadius.zero, 
        ),
        contentPadding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0), 
      ),
    );
  }
}
