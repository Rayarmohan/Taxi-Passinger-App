import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  var dropdownValue = '+91'.obs;
  TextEditingController phoneController = TextEditingController();
  void setDropdownValue(String value) {
    dropdownValue.value = value;
    update();
  }
}
