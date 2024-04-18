// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:taxi_passenger_app/features/book_ride/book_ride_screen.dart';
import 'package:taxi_passenger_app/features/booking_pages/booking_tab.dart';
import 'package:taxi_passenger_app/features/driver_arrived/driver_arrived_screen.dart';
import 'package:taxi_passenger_app/features/home/home_screen.dart';
import 'package:taxi_passenger_app/features/address_selection/address_selection.dart';
import 'package:taxi_passenger_app/features/arrived/arrived_screen.dart';
import 'package:taxi_passenger_app/features/book_ride_2/book_for_self.dart';
import 'package:taxi_passenger_app/features/destination/destination_screen.dart';
import 'package:taxi_passenger_app/features/home/car_image/car_image_screen.dart';
import 'package:taxi_passenger_app/features/manage_address/manage_address_screen.dart';
import 'package:taxi_passenger_app/features/navigateyour_ride/naviagate_your_ride_screen.dart';
import 'package:taxi_passenger_app/features/navigation/navigation_screen.dart';
import 'package:taxi_passenger_app/features/rate_driver/rate_driver_screen.dart';
import 'package:taxi_passenger_app/features/ride/ride_confirmation.dart';
import 'package:taxi_passenger_app/features/ride/ride_founded.dart';
import 'package:taxi_passenger_app/features/ride/ride_founded2.dart';
import 'package:taxi_passenger_app/features/sos/sos_screen.dart';
import 'package:taxi_passenger_app/features/verify_code/verify_code_screen.dart';

import 'package:taxi_passenger_app/utils/core/theme/app_theme.dart';

import 'utils/route/route.dart';
import 'utils/route/route_name.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 800),
      minTextAdapt: true,
      splitScreenMode: true,
      useInheritedMediaQuery: true,
      builder: (context, child) => GetMaterialApp(
        theme: AppTheme.appTheme,
        debugShowCheckedModeBanner: false,
        title: 'Taxi_passenger_app',
        // initialRoute: '/',
        home: NotificationScreen(),
        getPages: appRoutes(),
        home: HelpCenter(),
      ),
    );
  }
}
