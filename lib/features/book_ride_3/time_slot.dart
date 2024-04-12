import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TimeSelector extends StatefulWidget {
  const TimeSelector({super.key});

  @override
  State<TimeSelector> createState() => _TimeSelectorState();
}

class _TimeSelectorState extends State<TimeSelector> {

  

  @override
  Widget build(BuildContext context) {
    return Container(
      child: CupertinoDatePicker(initialDateTime: DateTime.now(), 
      backgroundColor: Colors.white,
      use24hFormat: false,
      dateOrder: DatePickerDateOrder.dmy,

      onDateTimeChanged: (DateTime value) { 

       },),
    );
  }
}