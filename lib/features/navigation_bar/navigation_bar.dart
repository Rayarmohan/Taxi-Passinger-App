// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:taxi_passenger_app/features/navigation_bar/navigation_controller.dart';
import 'package:taxi_passenger_app/utils/color/app_colors.dart';

class BottomNavigation extends StatelessWidget {
  final TextStyle selectedLabelStyle = const TextStyle(
      color: Colors.white, fontWeight: FontWeight.w500, fontSize: 12);

  const BottomNavigation({super.key});

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
            children: [

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
          _buildBottomNavigationBarItem('Home', Icons.home,
              bottomNavigationController.tabIndex.value == 0, context),
          _buildBottomNavigationBarItem('Earnings', Icons.bar_chart_outlined,
              bottomNavigationController.tabIndex.value == 1, context),
          _buildBottomNavigationBarItem('History', Icons.history,
              bottomNavigationController.tabIndex.value == 2, context),
          _buildBottomNavigationBarItem('Notification', Icons.notifications,
              bottomNavigationController.tabIndex.value == 3, context),
          _buildBottomNavigationBarItem('Profile', Icons.person,
              bottomNavigationController.tabIndex.value == 4, context),
        ],
        currentIndex: bottomNavigationController.tabIndex.value,
        selectedItemColor: AppColors.primeryColor,
        unselectedItemColor: Color.fromARGB(255, 211, 209, 209),
        onTap: bottomNavigationController.changeTabIndex,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: true,
        showUnselectedLabels: true,
      ),
    );
  }

  BottomNavigationBarItem _buildBottomNavigationBarItem(
      String label, IconData icon, bool isActive, BuildContext context) {
        TextStyle commonTextStyle = TextStyle(
      fontSize: 10,
      fontWeight: FontWeight.w500,
      color: isActive ? AppColors.primeryColor : Color.fromARGB(255, 211, 209, 209));
    return BottomNavigationBarItem(
      icon: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            size: 20,
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            label,
            style: commonTextStyle,
          )
          // Inactive color
        ],
      ),
      label: '',
      activeIcon: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            color: AppColors.primeryColor,
            size: 20,
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