import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EditprofileCon extends GetxController {
   var dropdownValue = '+91'.obs;
  var gender = 'Male'.obs;

  TextEditingController editController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController dobController = TextEditingController();
  


   void setDropdownValue(String value) {
    dropdownValue.value = value;
    update();
  }

   void setGender(String value) {
    gender.value = value;
    update();
  }

  
}




 
   

