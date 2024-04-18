import 'package:flutter/material.dart';
import 'package:taxi_passenger_app/utils/color/app_colors.dart';

class CustomSearchBar extends StatelessWidget {
  final String hintText;
  final Widget leadingIcon;
  final Widget trailingIcon;
  final ValueChanged<String>? onChanged;

  const CustomSearchBar({
    Key? key,
    required this.hintText,
    required this.leadingIcon,
    required this.trailingIcon,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(2),
        border: Border.all(
          color: Colors.grey.withOpacity(0.5), // Grey opacity shade color
        ),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: leadingIcon,
          ),
          Expanded(
            child: Text(
              hintText,
              style: TextStyle(
                color: Colors.grey.withOpacity(0.5), // Same color as border
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: trailingIcon,
          ),
        ],
      ),
    );
  }
}
