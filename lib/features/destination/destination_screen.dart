import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:taxi_passenger_app/utils/color/app_colors.dart';
import 'package:taxi_passenger_app/utils/route/route_name.dart';
import 'package:taxi_passenger_app/widgets/custom_app_bar.dart';
import 'package:taxi_passenger_app/widgets/custom_button.dart';
import 'package:taxi_passenger_app/widgets/custom_images.dart';

class DestinationScreen extends StatelessWidget {
  const DestinationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: Text('Destination',
            style: Theme.of(context).textTheme.titleLarge!.copyWith(
                fontSize: 20,
                fontWeight: FontWeight.w400,
                height: 1.7,
                color: AppColors.primeryColor)),
        leading: const Padding(
          padding: EdgeInsets.all(8.0),
          child: CustomPngImage(
            imageName: "assets/images/arrow_back.png",
            height: 30,
            width: 30,
          ),
        ),
      ),
      body: SafeArea(
          child: Column(
        children: [
          const SizedBox(height: 20),
          const Divider(),
          const SizedBox(height: 4.0),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const SizedBox(width: 20.0),
                      const Icon(Icons.radio_button_checked_rounded,
                          color: AppColors.primeryColor),
                      const SizedBox(width: 20),
                      Text(
                        'KwaZulu-Natal, 219 Florida Rd...',
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: AppColors.primeryColor),
                      ),
                    ],
                  ),
                  const SizedBox(height: 2.0),
                  const Row(
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
                  const SizedBox(height: 2.0),
                  Row(
                    children: [
                      const SizedBox(width: 20.0),
                      const Icon(Icons.radio_button_checked_rounded,
                          color: AppColors.primeryColor),
                      const SizedBox(width: 20),
                      Text(
                        'Add Stop',
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: AppColors.primeryColor),
                      ),
                    ],
                  ),
                  const SizedBox(height: 2.0),
                  const Row(
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
                  const SizedBox(height: 2.0),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 0, 20, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 0, 20, 0),
                          child: Row(
                            children: [
                              const Icon(
                                Icons.location_on,
                                color: AppColors.primeryColor,
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              Text(
                                'Durban, 4000, 219 Florida Rd...',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        color: AppColors.primeryColor),
                              )
                            ],
                          ),
                        ),
                        const Icon(
                          Icons.map,
                          color: AppColors.primeryColor,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 4.0),
                  const Divider(),
                  const SizedBox(height: 20.0),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            width: 1,
                            color: const Color.fromRGBO(241, 241, 241, 1),
                          )),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                const Icon(
                                  Icons.bookmark,
                                  color: AppColors.primeryColor,
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                Text(
                                  'Saved Places',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium!
                                      .copyWith(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          color: AppColors.primeryColor),
                                )
                              ],
                            ),
                            const Icon(
                              Icons.arrow_forward_ios,
                              color: AppColors.primeryColor,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  const Divider(),
                  const SizedBox(height: 4.0),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 0, 20, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                          child: Row(
                            children: [
                              const Icon(
                                Icons.restart_alt,
                                color: AppColors.primeryColor,
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              Text(
                                '2118 Thrnridge Cir, Syacuse C...',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        color: AppColors.primeryColor),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 4.0),
                  const Divider(),
                  const SizedBox(height: 4.0),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 0, 20, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                          child: Row(
                            children: [
                              const Icon(
                                Icons.restart_alt,
                                color: AppColors.primeryColor,
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              Text(
                                'KwaZulu-Natal, 219 Florida Rd...',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        color: AppColors.primeryColor),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 4.0),
                  const Divider(),
                  const SizedBox(height: 4.0),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 0, 20, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                          child: Row(
                            children: [
                              const Icon(
                                Icons.restart_alt,
                                color: AppColors.primeryColor,
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              Text(
                                'KwaZulu-Natal, 219 Florida Rd...',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        color: AppColors.primeryColor),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 4.0),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            left: 0,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: CustomButton(
                onPressed: () {
                  Get.toNamed(AppRoute.bookRide);
                },
                child: Text(
                  'Confirm Location',
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .copyWith(fontSize: 15, color: AppColors.white),
                ),
              ),
            ),
          )
        ],
      )),
    );
  }
}
