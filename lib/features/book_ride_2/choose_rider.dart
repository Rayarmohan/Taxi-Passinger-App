import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:taxi_passenger_app/features/book_ride/transparent_app_bar.dart';
import 'package:taxi_passenger_app/features/book_ride_2/rider_options.dart';
import 'package:taxi_passenger_app/utils/color/app_colors.dart';
import 'package:taxi_passenger_app/widgets/custom_button.dart';
import 'package:taxi_passenger_app/widgets/custom_images.dart';

class ChooseRider extends StatelessWidget {
  const ChooseRider({super.key});

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
          Positioned(
            child: Container(
            height: 199,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/mappath.png'),
                fit: BoxFit.contain, // This will cover the entire background
              ),
            ),
          )),
          Column(
            children: [
              Expanded(
                flex: 1,
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
                  flex: 1,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.all(25),
                    color: Colors.white,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Someone Else Taking This Ride?',
                            style: Theme.of(context)
                                .textTheme
                                .headlineMedium!
                                .copyWith(
                                    color: AppColors.primeryColor,
                                    fontSize: 20)),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                            'Choose a contact so that they also get driver number, vehicle details and ride OTP via SMS',
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(color: AppColors.primeryColor)),
                        Expanded(child: Container(

                          child: RiderOptions(),
                          )),
                          CustomButton(
                height: 50,
                width: MediaQuery.of(context).size.width * 0.83,
                onPressed: () {},
                text: "Confirm",
                textColor: Colors.white,
                color: AppColors.primeryColor,
              )
                      ],
                    ),
                  ))
            ],
          )
        ],
      ),
    );
  }
}
