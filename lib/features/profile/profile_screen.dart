// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:taxi_passenger_app/features/booking_pages/booking_tab.dart';
import 'package:taxi_passenger_app/features/booking_pages/pre_booking.dart';
import 'package:taxi_passenger_app/features/help_center/help_center.dart';
import 'package:taxi_passenger_app/features/home/car_image/car_image_screen.dart';
import 'package:taxi_passenger_app/features/profile/editprofile_screen.dart';
import 'package:taxi_passenger_app/features/profile/widgets/update_photo.dart';
import 'package:taxi_passenger_app/features/profilesettings/profilesettings_screen.dart';
import 'package:taxi_passenger_app/utils/color/app_colors.dart';
import 'package:taxi_passenger_app/widgets/custom_app_bar.dart';
import 'package:taxi_passenger_app/widgets/custom_images.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(
        title: Text('Profile',
            style: Theme.of(context)
                .textTheme
                .headlineMedium!
                .copyWith(height: 1.7, color: AppColors.primeryColor)),
        leading: Padding(
          padding: EdgeInsets.all(8.0),
          child: InkWell(
            onTap: () {
              Get.back();
            },
            child: CustomPngImage(
              imageName: "assets/images/arrow_back.png",
              height: 30,
              width: 30,
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.fromLTRB(20, 40, 20, 0),
          child: SingleChildScrollView(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ProfileUpdate(
                  imagePath: 'assets/images/propic.png',
                  onUpdate: () {
                    Get.to(ProfileEdit());
                  }),
              SizedBox(
                height: 10,
              ),
              Center(
                  child: Text("Jessica",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.normal,
                      ))),
              SizedBox(
                height: 30,
              ),
              ListTile(
                leading: CustomPngImage(
                  imageName: "assets/images/person.png",
                  height: 20,
                  width: 20,
                ),
                title: Text("Your Profile",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                        color: Colors.black)),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.black,
                  size: 15,
                ),
              ),
              Divider(
                height: 2,
                color: Colors.black,
              ),
              ListTile(
                onTap: () {
                  Get.to(BookingComplete());
                },
                leading: CustomPngImage(
                  imageName: "assets/images/sandtimer.png",
                  height: 20,
                  width: 20,
                ),
                title: Text("Your Rides",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                        color: Colors.black)),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.black,
                  size: 15,
                ),
              ),
              Divider(
                height: 2,
                color: Colors.black,
              ),
              ListTile(
                onTap: () => Get.to(Prebooking()),
                leading: CustomPngImage(
                  imageName: "assets/images/your ride.png",
                  height: 20,
                  width: 20,
                ),
                title: Text("Pre-Booked Rides",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                        color: Colors.black)),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.black,
                  size: 15,
                ),
              ),
              Divider(
                height: 2,
                color: Colors.black,
              ),
              InkWell(
                onTap: () {
                  Get.to(Settings());
                },
                child: ListTile(
                  leading: CustomPngImage(
                    imageName: "assets/images/settins2.png",
                    height: 20,
                    width: 20,
                  ),
                  title: Text("Settings",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                          color: Colors.black)),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.black,
                    size: 15,
                  ),
                ),
              ),
              Divider(
                height: 2,
                color: Colors.black,
              ),
              ListTile(
                onTap: () {},
                leading: CustomPngImage(
                  imageName: "assets/images/car4.png",
                  height: 25,
                  width: 25,
                ),
                title: Text("Cars",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                        color: Colors.black)),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.black,
                  size: 15,
                ),
              ),
              Divider(
                height: 2,
                color: Colors.black,
              ),
              InkWell(
                onTap: () {
                  Get.to(HelpCenter());
                },
                child: ListTile(
                  leading: CustomPngImage(
                    imageName: "assets/images/helpcenter.png",
                    height: 20,
                    width: 20,
                  ),
                  title: Text("Help Center",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                          color: Colors.black)),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.black,
                    size: 15,
                  ),
                ),
              ),
              Divider(
                height: 2,
                color: Colors.black,
              ),
              InkWell(
                onTap: () {},
                child: ListTile(
                  leading: CustomPngImage(
                    imageName: "assets/images/person2.png",
                    height: 20,
                    width: 20,
                  ),
                  title: Text("Privacy Policy",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                          color: Colors.black)),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.black,
                    size: 15,
                  ),
                ),
              ),
              Divider(
                height: 2,
                color: Colors.black,
              ),
              InkWell(
                onTap: () {
                  _showBottomSheet(context);
                },
                child: ListTile(
                  leading: CustomPngImage(
                    imageName: "assets/images/signout.png",
                    height: 20,
                    width: 20,
                  ),
                  title: Text("Log Out",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                          color: Colors.black)),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.black,
                    size: 15,
                  ),
                ),
              ),
            ],
          )),
        ),
      ),
    );
  }

  void _showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      useSafeArea: true,
      context: context,
      builder: (BuildContext context) {
        return SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              const ListTile(
                title: Center(
                  child: Text(
                    'Log Out',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
              ),
              const Divider(
                height: 2,
                color: Colors.black,
              ),
              const Padding(
                padding: EdgeInsets.all(16.0),
                child: Center(
                  child: Text(
                    'Are you sure you want to log out ?',
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      width: 165,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.zero,
                          ),
                        ),
                        child: const Text('Cancel'),
                      ),
                    ),
                    SizedBox(
                      width: 165,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green,
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.zero,
                          ),
                        ),
                        child: const Text('Yes, Logout'),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
