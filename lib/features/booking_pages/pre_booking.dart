// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:taxi_passenger_app/utils/color/app_colors.dart';
import 'package:taxi_passenger_app/widgets/booking_card.dart';
import 'package:taxi_passenger_app/widgets/custom_app_bar.dart';

import '../../widgets/custom_images.dart';

class Prebooking extends StatelessWidget {
  const Prebooking({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  CustomAppBar(
            title: Text('Bookings',
                style: Theme.of(context)
                    .textTheme
                    .titleLarge!
                    .copyWith(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      height: 1.7, color: AppColors.primeryColor)),
            leading: const Padding(
              padding: EdgeInsets.all(8.0),
              child: CustomPngImage(
                imageName: "assets/images/arrow_back.png",
                height: 30,
                width: 30,
              ),
            ),
          ),
      body: ListView.builder(
        itemCount: 5, // Number of items in the list
        itemBuilder: (context, index) {
          return Container(
      padding: EdgeInsets.all(20.0),
      child: Card(
          elevation: 4,
          child: Stack(
            children: [
              Column(
                mainAxisSize: MainAxisSize.min, // Add this line
                children: [
                  ListTile(
                    leading: const CircleAvatar(
                      radius: 32,
                      backgroundImage: AssetImage(
                          'assets/images/jessica_image.png'), // Your profile image
                    ),
                    title: Text(
                      'Jessica',
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          fontSize: 17,
                          fontWeight: FontWeight.w700,
                          color: AppColors.primeryColor),
                    ),
                    subtitle: Text(
                      'CRN: #854HG23',
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: AppColors.primeryColor),
                    ),
                    trailing: Padding(
                      padding: const EdgeInsets.only(top: 18.0),
                      child: const Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(Icons.star, color: Colors.amber, size: 15),
                          Text(' 5/5'),
                        ],
                      ),
                    ),
                  ),
                  const Divider(),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconText(imagePath: 'assets/images/location_icon.png', text: '4.5 mile',height: 20,width: 15,),
                      IconText(imagePath: 'assets/images/walletnew.png', text: '4 mins',height: 20,width: 20,),
                      IconText(imagePath: 'assets/images/time.png', text: 'Rs. 125',height: 20,width: 20,),
                    ],
                  ),
                  const SizedBox(height: 19.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'Date & Time',
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: AppColors.primeryColor),
                      ),
                      Text(
                        'Oct 26, 2024 | 08:00 AM',
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: AppColors.primeryColor),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8.0),
                  const Divider(),
                  const SizedBox(height: 4.0),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          SizedBox(width: 20.0),
                          Icon(Icons.radio_button_checked_rounded,
                              color: AppColors.primeryColor),
                          SizedBox(width: 20),
                          Text(
                            '219 Florida Rd, Durban',
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: AppColors.primeryColor),
                          ),
                        ],
                      ),
                      SizedBox(height: 2.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(width: 25.0),
                          SizedBox(
                              height: 20,
                              child: VerticalDivider(
                                thickness: 0.5,
                                color: Colors.black,
                              )),
                        ],
                      ),
                      SizedBox(height: 2.0),
                      Row(
                        children: [
                          SizedBox(width: 20.0),
                          Icon(Icons.location_on,
                              color: AppColors.primeryColor),
                          SizedBox(width: 20.0),
                          Text(
                            'KwaZulu-Natal, Cape Town',
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: AppColors.primeryColor),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 8.0),
                  ElevatedButton(
                    onPressed: () {},
                    child: Row(
                      children: [
                        Text(
                          'Booking car type',
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .copyWith(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color:
                                      const Color.fromRGBO(255, 255, 255, 1)),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          'Sedan',
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .copyWith(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.white),
                        ),
                        Spacer(),
                        Icon(Icons.chevron_right),
                      ],
                    ),
                    style: ElevatedButton.styleFrom(
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.zero, // Border radius
                      ),
                    ),
                  ),
                ],
              ),
            ],
          )),
    ); // Return a BookingCard for each item
        },
      ),
    );
  }
}
