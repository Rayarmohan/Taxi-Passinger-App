// ignore_for_file: sort_child_properties_last

import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taxi_passenger_app/widgets/custom_images.dart';
import '../../../utils/color/app_colors.dart';

class BookingCard extends StatelessWidget {
  final String statusText;
  const BookingCard({
    Key? key,
    required this.statusText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
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
                    trailing: const Padding(
                      padding: EdgeInsets.only(top: 18.0),
                      child: Row(
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
                      IconText(imagePath: 'assets/images/time.png', text: '4 mins',height: 20,width: 20,),
                      IconText(imagePath: 'assets/images/walletnew.png', text: 'Rs. 125',height: 20,width: 20,),
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
                          const SizedBox(width: 20.0),
                          const Icon(Icons.radio_button_checked_rounded,
                              color: AppColors.primeryColor),
                          const SizedBox(width: 20),
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
                      const SizedBox(height: 2.0),
                       Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(width: 28.w),
                           SizedBox(
                            height: 22.h,
                            child:const DottedLine(
                              direction: Axis.vertical,
                              lineLength: double.infinity,
                              lineThickness: 1,
                              dashLength: 4.0,
                              dashColor: Colors.black,
                              dashRadius: 0.0,
                              dashGapLength: 4.0,
                              dashGapColor: Colors.transparent,
                              dashGapRadius: 0.0,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 2.0),
                      Row(
                        children: [
                          const SizedBox(width: 20.0),
                          const Icon(Icons.location_on,
                              color: AppColors.primeryColor),
                          const SizedBox(width: 20.0),
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
                        const SizedBox(
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
                        const Spacer(),
                        const Icon(Icons.chevron_right),
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
              Positioned(
                top: 10,
                right: 8,
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: const BoxDecoration(
                    color: AppColors.primeryColor,
                    shape: BoxShape.rectangle,
                  ),
                  child: Text(
                    statusText,
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        color: AppColors.white),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}

class IconText extends StatelessWidget {
  final String imagePath;
  final String text;
  final double width;
  final double height;


  const IconText({
    Key? key,
    required this.imagePath,
    required this.text,
    required this.width,
    required this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomPngImage(
          imageName: imagePath,
          height: height,
          width: width,
        ),
        const SizedBox(width: 8.0),
        Text(
          text,
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: AppColors.primeryColor),
        ),
      ],
    );
  }
}
