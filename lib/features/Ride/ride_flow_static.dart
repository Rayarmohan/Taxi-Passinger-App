import 'package:flutter/material.dart';
import 'package:taxi_passenger_app/features/arrived/arrived_screen.dart';
import 'package:taxi_passenger_app/features/driver_arrived/driver_arrived_screen.dart';
import 'package:taxi_passenger_app/features/navigateyour_ride/naviagate_your_ride_screen.dart';
import 'package:taxi_passenger_app/features/navigation/navigation_screen.dart';
import 'package:taxi_passenger_app/features/ride/ride_founded.dart';
import 'package:taxi_passenger_app/features/ride/ride_founded2.dart';

import 'package:flutter/material.dart';
import 'package:taxi_passenger_app/features/verify_code/verify_code_screen.dart';

class RideFlowStatic extends StatelessWidget {
  const RideFlowStatic({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: _buildPageView(),
      ),
    );
  }

  Widget _buildPageView() {
    final PageController _pageController = PageController(initialPage: 0);

    // Automatically move to the next page after a delay
    Future.delayed(const Duration(seconds: 8), () {
      _pageController.nextPage(
        duration: const Duration(milliseconds: 600),
        curve: Curves.easeInOut,
      );
    });

    return PageView(
      controller: _pageController,
      children: const [
        RideFounded(),
        RideFounded2(),
        DriverArrived(),
        VerifyCodeScreen(),
        NavigateYourRide(),
        NavigationScreen(),
        ArrivedScreen()
      ],
    );
  }
}
