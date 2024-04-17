import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:taxi_passenger_app/features/login/login_controller.dart';
import 'package:taxi_passenger_app/utils/color/app_colors.dart';

class PhoneNumberField extends StatelessWidget {
  const PhoneNumberField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final LoginController controller = Get.find();
    return Container(
      height: 48,
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.lightGrey),
      ),
      child: Row(
        children: <Widget>[
          Obx(
            () => Padding(
              padding: const EdgeInsets.fromLTRB(10, 10, 0, 10),
              child: DropdownButtonHideUnderline(
                child: DropdownButton<String>(
                  value: controller.dropdownValue.value,
                  onChanged: (String? newValue) {
                    controller.setDropdownValue(newValue!);
                  },
                  items: <String>['+91', '+1', '+44'].map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
              ),
            ),
          ),
          const VerticalDivider(
            color: AppColors.lightGrey,
            thickness: 1,
          ),
          Expanded(
            child: TextField(
              controller: controller.phoneController,
              decoration: const InputDecoration(
                  border: InputBorder.none,
                  enabledBorder: InputBorder
                      .none, // Ensures no border when enabled and not focused
                  focusedBorder: InputBorder.none,
                  disabledBorder: InputBorder.none,
                  hintText: 'Enter Phone Number',
                  hintStyle: TextStyle(color: AppColors.black)),
              keyboardType: TextInputType.phone,
            ),
          ),
        ],
      ),
    );
  }
}
