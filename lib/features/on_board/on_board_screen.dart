import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:taxi_passenger_app/features/on_board/widgets/final_screen.dart';
import 'package:taxi_passenger_app/features/on_board/widgets/initial_screen.dart';
import 'package:taxi_passenger_app/features/on_board/widgets/middle_screen.dart';
import 'package:taxi_passenger_app/utils/color/app_colors.dart';
import 'package:taxi_passenger_app/utils/route/route_name.dart';

import 'on_board_controller.dart';

class OnBoardScreen extends StatelessWidget {
  const OnBoardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final PageController _pageController = PageController(initialPage: 0);

    final OnBoardingController controller = Get.put(OnBoardingController());
    return Scaffold(
      body: SafeArea(
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: <Widget>[
            PageView(
              controller: _pageController,
              onPageChanged: (int page) {
                controller.changePage(page);
              },
              children: const [InitialScreen(), MiddleScreen(), FinalScreen()],
            ),
            Positioned(
              bottom: 35,
              child: Obx(
                () => Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List<Widget>.generate(3, (int index) {
                    return AnimatedContainer(
                      duration: const Duration(milliseconds: 300),
                      height: 5,
                      width: (index == controller.currentPage.value) ? 60 : 20,
                      margin: const EdgeInsets.symmetric(horizontal: 5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: (index == controller.currentPage.value)
                            ? AppColors.primeryColor
                            : AppColors.grey,
                      ),
                    );
                  }),
                ),
              ),
            ),
            Positioned(
              bottom: 20.0,
              right: 20.0,
              child: TextButton(
                onPressed: () {
                  if (controller.currentPage.value == 2) {
                    Get.toNamed(AppRoute.login);
                  }
                  _pageController.nextPage(
                    duration: const Duration(milliseconds: 400),
                    curve: Curves.easeInOut,
                  );
                },
                child: Text('Next',
                    style: Theme.of(context).textTheme.displayMedium),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
