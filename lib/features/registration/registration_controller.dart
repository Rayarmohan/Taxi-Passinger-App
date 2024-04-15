import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegistarationController extends GetxController {
  var dropdownValue = '+91'.obs;
  var genderdropdownValue = 'Male'.obs;
  var citydropdownValue = 'Kochi'.obs;
  var isChecked = false.obs;

  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController dobController = TextEditingController();
  void setDropdownValue(String value) {
    dropdownValue.value = value;
    update();
  }

  void setGenderDropdownValue(String value) {
    genderdropdownValue.value = value;
    update();
  }

  void setCityDropdownValue(String value) {
    citydropdownValue.value = value;
    update();
  }

  void setIsChecked(bool value) {
    isChecked.value = value;
    update();
  }
}
