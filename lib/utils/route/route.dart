import 'package:get/get.dart';
import 'package:taxi_passenger_app/features/login/login_screen.dart';
import 'package:taxi_passenger_app/features/notification/notification_screen.dart';
import 'package:taxi_passenger_app/features/on_board/on_board_screen.dart';
import 'package:taxi_passenger_app/features/otp_verify/otp_verify_screen.dart';
import 'package:taxi_passenger_app/utils/route/route_name.dart';

appRoutes() => [
      GetPage(name: AppRoute.onboard, page: () => OnBoardScreen()),
      GetPage(name: AppRoute.login, page: () => const LoginScreen()),
      GetPage(name: AppRoute.otpscreen, page: () => const OTPScreen()),
      GetPage(name: AppRoute.notification, page: () => const NotificationScreen()),
    ];
