import 'package:flutter/material.dart';
import 'package:taxi_passenger_app/features/add_money/money_button.dart';

class MoneyGrid extends StatelessWidget {
  const MoneyGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        // Calculate the width of the buttons based on the parent's width
        double width = (constraints.maxWidth - 32) / 4; // 32 is the sum of horizontal margins

        return Column(
          children: [
            Row(
              children: [
                MoneyButton(amount: 100, width: width),
                MoneyButton(amount: 200, width: width),
                MoneyButton(amount: 300, width: width),
                MoneyButton(amount: 400, width: width)
              ],
            ),
            Row(
              children: [
                MoneyButton(amount: 500, width: width),
                MoneyButton(amount: 600, width: width),
                MoneyButton(amount: 700, width: width),
                MoneyButton(amount: 800, width: width)
              ],
            )
          ],
        );
      },
    );
  }
}
