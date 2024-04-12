import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:taxi_passenger_app/features/book_ride/transparent_app_bar.dart';
import 'package:taxi_passenger_app/features/book_ride/vehicle.dart';
import 'package:taxi_passenger_app/utils/color/app_colors.dart';
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
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/map.png'),
                fit: BoxFit.contain, // This will cover the entire background
              ),
            ),
          ),
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
                              height: 1.7, color: AppColors.primeryColor)),
                  leading: Padding(
                    padding: EdgeInsets.all(8.0),
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
                            padding: EdgeInsets.all(15),
                            child: Center(
                              child: Padding(
                                padding: EdgeInsets.all(8.0), // Removed const
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Column(
                                      // Removed const
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: <Widget>[
                                        Icon(Icons.radio_button_checked,
                                            size: 20.0),
                                        SizedBox(
                                          height: 40,
                                          child: Image.asset(
                                              'assets/images/dottedline.png'),
                                        ),
                                        Icon(Icons.location_on, size: 18.0),
                                      ],
                                    ),
                                    Expanded(
                                      child: Padding(
                                        padding: EdgeInsets.only(
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
                                                      color:
                                                          AppColors.primeryColor,
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
                                                    color: const Color.fromRGBO(
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
                                                              color:
                                                                  AppColors.white,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .normal),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(
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
                                                      color:
                                                          AppColors.primeryColor,
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
                          Divider(
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
                                    Icon(
                                      Icons.access_time_filled_rounded,
                                      color: AppColors.primeryColor,
                                      size: 35,
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
                                ),
                              ],
                            ),
                          ),
                          Divider(
                            color: Color.fromARGB(255, 238, 237, 237),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 20),
                            child: Container(
                              height: 115,
                              child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: 3,
                                  itemBuilder: (context, index) {
                                    return Row(
                                      children: [
                                        SizedBox(
                                          width: 40,
                                        ),
                                        VehicleInfo(index: index),
                                      ],
                                    );
                                  }),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 27, vertical: 5),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                        height: 40,
                                        width: 40,
                                        child: const CustomPngImage(
                                          imageName: 'assets/images/fileicon.png',
                                          boxFit: BoxFit.fill,
                                        )),
                                    const SizedBox(width: 30),
                                    Text(
                                      'Pre-Booke Rides',
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
                                ),
                              ],
                            ),
                          ),
                          Divider(
                            color: Color.fromARGB(255, 238, 237, 237),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 30, vertical: 5),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.person,
                                      color: AppColors.primeryColor,
                                      size: 35,
                                    ),
                                    const SizedBox(width: 31),
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
                                ),
                              ],
                            ),
                          ),
                          Divider(
                            color: Color.fromARGB(255, 238, 237, 237),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 35, vertical: 5),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                    const SizedBox(width: 32),
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
                                ),
                              ],
                            ),
                          ),
                          Divider(
                            color: Color.fromARGB(255, 238, 237, 237),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 20),
                            child: CustomButton(
                              height: 50,
                              width: MediaQuery.of(context).size.width * 0.83,
                              onPressed: () {},
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
