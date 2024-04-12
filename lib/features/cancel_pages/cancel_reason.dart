// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:taxi_passenger_app/utils/color/app_colors.dart';

class CancelReason extends StatefulWidget {
  const CancelReason({super.key});

  @override
  State<CancelReason> createState() => _CancelReasonState();
}

class _CancelReasonState extends State<CancelReason> {
  int _selectedValue = 0;
  List<String> reasons = [
    'Rider Not Available',
    'Rider want to book another cab',
    'Rider Misbehave',
    'Taxi Breakdown',
    'Puncture',
    'Other'
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: reasons.length,
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (BuildContext context, int index) {
        return Container(
          alignment: Alignment.centerLeft,
          child: ListTile(
            contentPadding: EdgeInsets.zero,
            dense: true,
            title: Text(reasons[index],
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    color: AppColors.primeryColor,
                    fontSize: 13,
                    fontWeight: FontWeight.w500)),
            leading: Radio(
              activeColor: AppColors.primeryColor,
              value: index,
              groupValue: _selectedValue,
              onChanged: (int? value) {
                setState(() {
                  _selectedValue = value!;
                });
              },
            ),
          ),
        );
      },
    );
  }
}
