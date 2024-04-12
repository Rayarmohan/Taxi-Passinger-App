import 'package:get/get.dart';
import 'package:taxi_passenger_app/features/coupon/coupon_screen.dart';
import 'package:taxi_passenger_app/features/driver_details/driver_details_screen.dart';
import 'package:taxi_passenger_app/features/chat/chat.dart';
import 'package:taxi_passenger_app/features/login/login_screen.dart';
import 'package:taxi_passenger_app/features/notification/notification_screen.dart';
import 'package:taxi_passenger_app/features/on_board/on_board_screen.dart';
import 'package:taxi_passenger_app/features/otp_verify/otp_verify_screen.dart';
import 'package:taxi_passenger_app/features/profile/profile_screen.dart';
import 'package:taxi_passenger_app/features/payment/add_card.dart';
import 'package:taxi_passenger_app/features/payment/pay_cash.dart';
import 'package:taxi_passenger_app/features/ride/ride_confirmation.dart';
import 'package:taxi_passenger_app/features/ride/ride_founded.dart';
import 'package:taxi_passenger_app/features/ride/ride_founded2.dart';
import 'package:taxi_passenger_app/utils/route/route_name.dart';

appRoutes() => [
      GetPage(name: AppRoute.onboard, page: () => const OnBoardScreen()),
      GetPage(name: AppRoute.login, page: () => const LoginScreen()),
      GetPage(name: AppRoute.otpscreen, page: () => const OTPScreen()),
      GetPage(name: AppRoute.notification, page: () => const NotificationScreen()),
       GetPage(name: AppRoute.profile, page: () => const ProfileScreen()),
       GetPage(name: AppRoute.coupon, page: () => const CouponScreen()),
  GetPage(name: AppRoute.addcard, page: () => AddCardPage()),
  GetPage(name: AppRoute.paycash, page: () => const PayCash()),
  GetPage(name: AppRoute.rideconfirm, page: () => const RideConfirmationPage()),
  GetPage(name: AppRoute.driverdetails, page: () => const DriverDetailsScreen()),
  GetPage(name: AppRoute.paycash, page: () => PayCash()),
  GetPage(name: AppRoute.rideconfirm, page: () => RideConfirmationPage()),
  GetPage(name: AppRoute.ridefounded, page: () => RideFounded()),
  GetPage(name: AppRoute.ridefounded2, page: () => RideFounded2()),
  GetPage(name: AppRoute.chat, page: () => ChatPage()),
    ];
