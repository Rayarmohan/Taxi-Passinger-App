import 'package:flutter/material.dart';
import 'package:taxi_passenger_app/features/notification/notification_container.dart';
import 'package:taxi_passenger_app/utils/color/app_colors.dart';
import 'package:taxi_passenger_app/widgets/custom_app_bar.dart';
import 'package:taxi_passenger_app/widgets/custom_images.dart';
class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: Text("Notification",
            style: Theme.of(context)
                .textTheme
                .headlineMedium!
                .copyWith(height: 1.7, color: AppColors.primeryColor)),
        leading: const Padding(
          padding: EdgeInsets.all(8.0),
          child: CustomPngImage(
            imageName: "assets/images/arrow_back.png",
            height: 30,
            width: 30,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(
              width: 55 ,
              height: 10,
              color: AppColors.primeryColor,
              child: Center(
                child: Text(
                  '2 NEW',
                  style: Theme.of(context)
                      .textTheme
                      .titleSmall!
                      .copyWith(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      height: 1.7, color: AppColors.white),
                ),
              ),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("TODAY",
                      style: Theme.of(context)
                          .textTheme
                          .labelLarge!
                          .copyWith(height: 1.7, color: AppColors.grey)),
                  GestureDetector(
                    onTap: () {
                      // Implement mark all as read functionality
                    },
                    child: Text("Mark all as read",
                        style: Theme.of(context)
                            .textTheme
                            .labelLarge!
                            .copyWith(height: 1.7, color: AppColors.primeryColor)),
                  )
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 3,
                itemBuilder: (context, index) {
                  return  Padding(
                    padding: const EdgeInsets.only(top:4.0,bottom: 4),
                    child:  NotificationContainer(
                      showBorder: index % 2 == 0,
                    ),
                  );
                },
              ),
              
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("YESTERDAY",
                      style: Theme.of(context)
                          .textTheme
                          .labelLarge!
                          .copyWith(height: 1.7, color: AppColors.grey,fontSize: 14)),
                  GestureDetector(
                    onTap: () {
                      // Implement mark all as read functionality
                    },
                    child: Text("Mark all as read",
                        style: Theme.of(context)
                            .textTheme
                            .labelLarge!
                            .copyWith(height: 1.7, color: AppColors.primeryColor,fontSize: 14)),
                  )
                ],
              ),
              const SizedBox(height: 8),
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 2,
                itemBuilder: (context, index) {
                  return  Padding(
                    padding:  const EdgeInsets.only(top:4.0,bottom: 4),
                    child:  NotificationContainer(
                      showBorder: index % 2 == 0,
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
