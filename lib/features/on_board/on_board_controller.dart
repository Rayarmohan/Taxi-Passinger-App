import 'package:get/get.dart';

class OnBoardingController extends GetxController {
  // List<OnboardingInfo> onboardingPages = [
  //   OnboardingInfo("RectangleX", "Your ride, Your Rules"),
  //   OnboardingInfo("RectangleY", "Your ride, Your Rules"),
  //   OnboardingInfo("RectangleZ", "Your ride, Your Rules")
  // ];

  var currentPage = 0.obs; // Reactive integer for current page

  void changePage(int index) {
    currentPage.value = index; // Change the current page index
  }
}
