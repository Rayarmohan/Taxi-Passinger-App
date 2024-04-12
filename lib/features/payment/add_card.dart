import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:taxi_passenger_app/features/payment/pay_cash.dart';

import '../../utils/color/app_colors.dart';
import '../../widgets/custom_app_bar.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_images.dart';
import '../../widgets/custom_text_field.dart';


class AddCardPage extends StatefulWidget {
  @override
  _AddCardPageState createState() => _AddCardPageState();
}

class _AddCardPageState extends State<AddCardPage> {
  bool _saveCard = false;

  final TextEditingController _cardHolderNameController = TextEditingController();
  final TextEditingController _cardNumberController = TextEditingController();
  final TextEditingController _expiryDateController = TextEditingController();
  final TextEditingController _cvvController = TextEditingController();

  @override
  void dispose() {
    _cardHolderNameController.dispose();
    _cardNumberController.dispose();
    _expiryDateController.dispose();
    _cvvController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80.0),
        child: Column(
          children: [
            SizedBox(height: 20.0),
            CustomAppBar(
              title: Text("Add Card",
                  style: Theme.of(context)
                      .textTheme
                      .headlineMedium!
                      .copyWith(height: 1.7, color: AppColors.primeryColor)),
              leading: const Padding(
                padding: EdgeInsets.all(8.0),
                child: CustomPngImage(
                  imageName: "assets/images/arrow_back.png",
                  height: 30,
                  width: 30,
                ),
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Center(
                child: CustomPngImage(
                  imageName: 'assets/images/card.png',
                  width: 360,
                  height: 219,
                ),
              ),
              SizedBox(height: 16),
              Text("Card Holder Name",
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .copyWith(height: 1.7, color: AppColors.grey)),
              CustomTextField(
                hint: "",
                controller: TextEditingController(),
              ),
              SizedBox(height: 16),
              Text("Card Number",
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .copyWith(height: 1.7, color: AppColors.grey)),
              CustomTextField(
                hint: "",
                controller: TextEditingController(),
              ),
              SizedBox(height: 16),

              Row(
                children: <Widget>[
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Expiry Date",
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .copyWith(height: 1.7, color: AppColors.grey),
                        ),
                        CustomTextField(
                          hint: "",
                          controller: TextEditingController(),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 16),

                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "CVV",
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .copyWith(height: 1.7, color: AppColors.grey),
                        ),
                        CustomTextField(
                          hint: "",
                          controller: TextEditingController(),

                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16),
              Row(
                children: <Widget>[
                  Checkbox(
                    value: _saveCard,
                    onChanged: (bool? value) {
                      setState(() {
                        _saveCard = value!;
                      });
                    },
                    activeColor: Color(0xFF0A2B4C),
                  ),
                  Text("Save Card"),
                ],
              ),
              SizedBox(height: 16),
              CustomButton(
                text: "Add Card",
                textColor: Colors.white,
                onPressed: () {
                  Get.to(() => PayCash()); // Use GetX navigation
                  // Add your onPressed logic here
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
