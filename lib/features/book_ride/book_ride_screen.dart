import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:taxi_passenger_app/features/book_ride/transparent_app_bar.dart';
import 'package:taxi_passenger_app/features/book_ride/vehicle.dart';
import 'package:taxi_passenger_app/features/booking_pages/prebooking_tab.dart';
import 'package:taxi_passenger_app/features/coupon/coupon_screen.dart';
import 'package:taxi_passenger_app/features/coupon/widget/coupon_card.dart';
import 'package:taxi_passenger_app/features/home/car_image/car_image_screen.dart';
import 'package:taxi_passenger_app/utils/color/app_colors.dart';
import 'package:taxi_passenger_app/utils/route/route_name.dart';
import 'package:taxi_passenger_app/widgets/custom_app_bar.dart';
import 'package:taxi_passenger_app/widgets/custom_button.dart';
import 'package:taxi_passenger_app/widgets/custom_images.dart';

class BookRide extends StatefulWidget {
  const BookRide({super.key});

  @override
  State<BookRide> createState() => _BookRideState();
}

class _BookRideState extends State<BookRide> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/map1.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
              top: 120,
              left: 0,
              right: 90,
              child: Container(
                height: 29,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/location_red_point.png'),
                    fit:
                        BoxFit.contain, // This will cover the entire background
                  ),
                ),
              )),
          //   CustomPngImage(
          //   imageName: 'assets/images/map1.png',
          //   boxFit: BoxFit.cover,
          // ),
          Column(
            children: [
              Expanded(
                flex: 2,
                child: TransAppBar(
                  background: Colors.transparent,
                  title: Text('Book Ride',
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium!
                          .copyWith(
                              height: 1.7,
                              color: AppColors.primeryColor,
                              fontSize: 20)),
                  leading: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: () {},
                      child: const CustomPngImage(
                        imageName: "assets/images/arrow_back.png",
                        height: 30,
                        width: 30,
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                  flex: 7,
                  child: SingleChildScrollView(
                    child: Container(
                      color: Colors.white,
                      child: Column(
                        children: [
                          Container(
                            height: 130,
                            padding: const EdgeInsets.all(15),
                            child: Center(
                              child: Padding(
                                padding:
                                    const EdgeInsets.all(8.0), // Removed const
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Column(
                                      // Removed const
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[
                                        const Icon(Icons.radio_button_checked,
                                            size: 20.0),
                                        SizedBox(
                                          height: 40,
                                          child: Image.asset(
                                              'assets/images/dottedline.png'),
                                        ),
                                        const CustomPngImage(
                                          imageName:
                                              'assets/images/location_icon.png',
                                          boxFit: BoxFit.cover,
                                          height: 20,
                                          width: 15.14,
                                        ),
                                      ],
                                    ),
                                    Expanded(
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            left: 8.0), // Removed const
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text(
                                              'KwaZulu-Natal, 219 Florida Rd...',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .titleMedium!
                                                  .copyWith(
                                                      height: 1.7,
                                                      color: AppColors
                                                          .primeryColor,
                                                      fontWeight:
                                                          FontWeight.normal),
                                            ),
                                            Row(
                                              children: [
                                                SizedBox(
                                                  height: 2,
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.57,
                                                  child: const Divider(
                                                    color: Color.fromRGBO(
                                                        241, 241, 241, 1),
                                                    thickness: 1.0,
                                                  ),
                                                ),
                                                Container(
                                                  color: AppColors.primeryColor,
                                                  width: 70,
                                                  height: 29,
                                                  child: Center(
                                                    child: Text(
                                                      '10 min trip',
                                                      style: Theme.of(context)
                                                          .textTheme
                                                          .titleSmall!
                                                          .copyWith(
                                                              height: 1.7,
                                                              color: AppColors
                                                                  .white,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .normal),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            const SizedBox(
                                              // Removed const
                                              height: 5,
                                            ),
                                            Text(
                                              'Durban, 4000, 219 Florida Rd...',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .titleMedium!
                                                  .copyWith(
                                                      height: 1.7,
                                                      color: AppColors
                                                          .primeryColor,
                                                      fontWeight:
                                                          FontWeight.normal),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          const Divider(
                            color: Color.fromARGB(255, 238, 237, 237),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 27, vertical: 5),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    const Icon(
                                      Icons.access_time_filled_rounded,
                                      color: AppColors.primeryColor,
                                      size: 25,
                                    ),
                                    const SizedBox(width: 30),
                                    Text(
                                      'Now',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyMedium!
                                          .copyWith(
                                            height: 1.7,
                                            color: AppColors.black,
                                          ),
                                    ),
                                  ],
                                ),
                                const Icon(
                                  Icons.arrow_forward_ios,
                                  color: AppColors.primeryColor,
                                  size: 18,
                                ),
                              ],
                            ),
                          ),
                          const Divider(
                            color: Color.fromARGB(255, 238, 237, 237),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 20),
                            child: Container(
                              height: 115,
                              child: ListView.builder(
                                  padding: EdgeInsets.symmetric(horizontal: 20),
                                  scrollDirection: Axis.horizontal,
                                  itemCount: 3,
                                  itemBuilder: (context, index) {
                                    return GestureDetector(
                                        onTap: () {
                                          Get.to(CarImageScreen());
                                        },
                                        child: VehicleInfo(index: index));
                                  }),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 27, vertical: 5),
                            child: GestureDetector(
                              onTap: () {
                                Get.to(PrebookingComplete());
                              },
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                          height: 30,
                                          width: 30,
                                          child: const CustomPngImage(
                                            imageName:
                                                'assets/images/fileicon.png',
                                            boxFit: BoxFit.fill,
                                            width: 12.95,
                                            height: 17,
                                          )),
                                      const SizedBox(width: 30),
                                      Text(
                                        'Pre-Booked Rides',
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyMedium!
                                            .copyWith(
                                              height: 1.7,
                                              color: AppColors.black,
                                            ),
                                      ),
                                    ],
                                  ),
                                  const Icon(
                                    Icons.arrow_forward_ios,
                                    color: AppColors.primeryColor,
                                    size: 18,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const Divider(
                            color: Color.fromARGB(255, 238, 237, 237),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 27, vertical: 5),
                            child: GestureDetector(
                              onTap: () => Get.toNamed(AppRoute.bookForSelf),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      const Icon(
                                        Icons.person,
                                        color: AppColors.primeryColor,
                                        size: 30,
                                      ),
                                      const SizedBox(width: 30),
                                      Text(
                                        'Book for self',
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyMedium!
                                            .copyWith(
                                              height: 1.7,
                                              color: AppColors.black,
                                            ),
                                      ),
                                    ],
                                  ),
                                  const Icon(
                                    Icons.arrow_forward_ios,
                                    color: AppColors.primeryColor,
                                    size: 18,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const Divider(
                            color: Color.fromARGB(255, 238, 237, 237),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 27, vertical: 5),
                            child: GestureDetector(
                              onTap: () {
                                Get.to(const CouponScreen());
                              },
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                          height: 30,
                                          width: 30,
                                          child: const CustomPngImage(
                                            imageName:
                                                'assets/images/promoicon.png',
                                            boxFit: BoxFit.fill,
                                          )),
                                      const SizedBox(width: 30),
                                      Text(
                                        'Apply Promo',
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyMedium!
                                            .copyWith(
                                              height: 1.7,
                                              color: AppColors.black,
                                            ),
                                      ),
                                    ],
                                  ),
                                  const Icon(
                                    Icons.arrow_forward_ios,
                                    color: AppColors.primeryColor,
                                    size: 18,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const Divider(
                            color: Color.fromARGB(255, 238, 237, 237),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 20),
                            child: CustomButton(
                              height: 50,
                              width: MediaQuery.of(context).size.width * 0.83,
                              onPressed: () {
                                Get.toNamed(AppRoute.searchRider);
                              },
                              text: "Book Ride",
                              textColor: Colors.white,
                              color: AppColors.primeryColor,
                            ),
                          )
                        ],
                      ),
                    ),
                  ))
            ],
          )
        ],
      ),
    );
  }
}
