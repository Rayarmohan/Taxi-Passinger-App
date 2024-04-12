import 'package:flutter/cupertino.dart';
import 'package:taxi_passenger_app/features/payment_method/method.dart';

class MoreOptions extends StatefulWidget {
  const MoreOptions({super.key});

  @override
  State<MoreOptions> createState() => _MoreOptionsState();
}

class _MoreOptionsState extends State<MoreOptions> {
  int groupVal = 0;

  void _handleRadioValueChanged(int? value) {
    setState(() {
      groupVal = value!;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Method(
            singleValue: 1,
            groupValue: groupVal,
            text: 'Paypal',
            logo: 'assets/images/paypal.png',
            onChanged: _handleRadioValueChanged),
             Method(
            singleValue: 2,
            groupValue: groupVal,
            text: 'Apple pay',
            logo: 'assets/images/applelog.png',
            onChanged: _handleRadioValueChanged),
             Method(
            singleValue: 3,
            groupValue: groupVal,
            text: 'Google pay',
            logo: 'assets/images/google.png',
            onChanged: _handleRadioValueChanged),
      ],
    );
  }
}
