// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:taxi_passenger_app/features/add_money/add_to_wallet.dart';
import 'package:taxi_passenger_app/features/add_money/grid_view.dart';
import 'package:taxi_passenger_app/features/booking_pages/booking_tab.dart';
import 'package:taxi_passenger_app/features/home/home_screen.dart';
import 'package:taxi_passenger_app/features/navigation_bar/landing_page_controller.dart';
import 'package:taxi_passenger_app/features/notification/notification_screen.dart';
import 'package:taxi_passenger_app/features/profile/profile_screen.dart';
import 'package:taxi_passenger_app/utils/color/app_colors.dart';
import 'package:taxi_passenger_app/widgets/custom_images.dart';

class LandingPage extends StatelessWidget {
  final TextStyle selectedLabelStyle = const TextStyle(
      color: Colors.white, fontWeight: FontWeight.w500, fontSize: 12);

  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    final BottomNavigationController bottomNavigationController =
        Get.put(BottomNavigationController());
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar:
            buildBottomNavigationMenu(context, bottomNavigationController),
        body: Obx(
          () => IndexedStack(
            index: bottomNavigationController.tabIndex.value,
            children: const [
              HomeScreen(),
              AddMoneytoWallet(),
              BookingComplete(),
              NotificationScreen(),
              ProfileScreen()
            ],
          ),
        ),
      ),
    );
  }

  Widget buildBottomNavigationMenu(BuildContext context,
      BottomNavigationController bottomNavigationController) {
    return Obx(
      () => BottomNavigationBar(
        items: [
          _buildBottomNavigationBarItem('Home', 'bottomnav_home',20,20,
              bottomNavigationController.tabIndex.value == 0, context),
          _buildBottomNavigationBarItem('Earnings', 'bottomnav_earnings',20,20,
              bottomNavigationController.tabIndex.value == 1, context),
          _buildBottomNavigationBarItem('History', 'bottomnav_history',20,20,
              bottomNavigationController.tabIndex.value == 2, context),
          _buildBottomNavigationBarItem('Notification', 'bottomnav_notifications',20,16,
              bottomNavigationController.tabIndex.value == 3, context),
          _buildBottomNavigationBarItem('Profile', 'bottomnav_profile',20,18,
              bottomNavigationController.tabIndex.value == 4, context),
        ],
        currentIndex: bottomNavigationController.tabIndex.value,
        selectedItemColor: AppColors.primeryColor,
        unselectedItemColor: const Color.fromARGB(255, 211, 209, 209),
        onTap: bottomNavigationController.changeTabIndex,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: true,
        showUnselectedLabels: true,
      ),
    );
  }

  BottomNavigationBarItem _buildBottomNavigationBarItem(
      String label, String path,double height,double width , bool isActive, BuildContext context) {
    return BottomNavigationBarItem(
      icon: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomSvgImage(
            imageName: path,
            height: height,
            width: width,
            color: Colors.grey,
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            label,
            style: TextStyle(fontSize: 10, fontWeight: FontWeight.w500),
          )
          // Inactive color
        ],
      ),
      label: '',
      activeIcon: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomSvgImage(
            color: AppColors.primeryColor,
            imageName: path,
            height: height,
            width: width,
          ),
          SizedBox(
            height: 4,
          ),
          Text(label,
              style: TextStyle(
                  color: AppColors.primeryColor,
                  fontSize: 10,
                  fontWeight: FontWeight.w500)),
          SizedBox(
            height: 4,
          ),
          Container(
            width: 50,
            height: 4,
            margin: EdgeInsets.only(top: 2),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.horizontal(
                  left: Radius.circular(30.0), right: Radius.circular(30.0)),
              color: AppColors.primeryColor,
              shape: BoxShape.rectangle,
            ),
          ),
        ],
      ),
    );
  }
}
