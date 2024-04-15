import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:taxi_passenger_app/features/driver_details/widget/review_controller.dart';
import 'package:taxi_passenger_app/utils/color/app_colors.dart';

class ReviewTab extends StatelessWidget {
  const ReviewTab({super.key});

  @override
  Widget build(BuildContext context) {
    final ReviewController controller = Get.put(ReviewController());
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Review",
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    height: 1.7,
                    color: AppColors.primeryColor,
                    fontSize: 16,
                    fontWeight:
                        FontWeight.w500), // Replace with AppColors.primeryColor
              ),
              Text(
                "+Add A Review",
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    height: 1.7,
                    color: AppColors.primeryColor,
                    fontSize: 16,
                    fontWeight:
                        FontWeight.w500), // Replace with AppColors.primeryColor
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20),
          child: TextFormField(
            style: const TextStyle(
                color: Color.fromRGBO(37, 37, 37, 1),
                fontFamily: "SF Pro Display"),
            enableInteractiveSelection: true,
            controller: controller.searchController,
            showCursor: true,
            autofocus: false,
            cursorColor: Colors.black,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            decoration: const InputDecoration(
              prefixIcon: Icon(Icons.search,
                  color: AppColors.primeryColor), // Added search icon here
              enabled: true,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(2.0)),
                borderSide: BorderSide(color: Colors.grey),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(2.0)),
                borderSide: BorderSide(color: Colors.grey),
              ),
              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(2.0)),
                borderSide: BorderSide(color: Colors.red),
              ),
              hintText: "Current Location",
              counterText: "",
              hintStyle: TextStyle(
                fontFamily: "SF Pro Display",
                fontSize: 16,
                fontWeight: FontWeight.w400,
                height: 1.275,
                color: Colors.grey,
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20),
          child: Row(
            children: [
              Column(
                children: [
                  CircleAvatar(
                    radius: 29.5,
                    child: Container(
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage("assets/images/driverpic.png"),
                          fit: BoxFit
                              .fitHeight, // This will make the image fit properly
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                width: 20,
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Joseph Deo",
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          height: 1.7,
                          color: AppColors.primeryColor,
                          fontSize: 16), // Replace with AppColors.primeryColor
                    ),
                    Text(
                      "11 months ago",
                      style: Theme.of(context).textTheme.labelLarge!.copyWith(
                          height: 1.7,
                          color: AppColors.primeryColor,
                          fontWeight: FontWeight.w400,
                          fontSize: 14), // Replace with AppColors.primeryColor
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20),
          child: Text(
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been.",
            style: Theme.of(context).textTheme.labelLarge!.copyWith(
                height: 1.7,
                color: AppColors.primeryColor,
                fontWeight: FontWeight.w400,
                fontSize: 14), // Replace with AppColors.primeryColor
          ),
        ),
        const SizedBox(height: 10,),
        Padding(
          padding: const EdgeInsets.only(left:20.0,right: 20),
          child: RatingBar.builder(
            initialRating: 4,
            minRating: 1,
            direction: Axis.horizontal,
            allowHalfRating: true,
            itemCount: 5,
            itemPadding: const EdgeInsets.symmetric(
                horizontal: 2.0), // Reduce space between stars
            itemBuilder: (context, _) => const Icon(
              Icons.star,
              color: AppColors.primeryColor,
            ),
            onRatingUpdate: (rating) {
              print(rating);
            },
            ignoreGestures: true, // Makes it non-editable
            itemSize: 30, // Adjust the star size
          ),
        ),
        const SizedBox(height: 10,),
        const Divider(thickness: 2,),
        const SizedBox(height: 10,),
        Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20),
          child: Row(
            children: [
              Column(
                children: [
                  CircleAvatar(
                    radius: 29.5,
                    child: Container(
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage("assets/images/driverpic.png"),
                          fit: BoxFit
                              .fitHeight, // This will make the image fit properly
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                width: 20,
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Joseph Deo",
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          height: 1.7,
                          color: AppColors.primeryColor,
                          fontSize: 16), // Replace with AppColors.primeryColor
                    ),
                    Text(
                      "11 months ago",
                      style: Theme.of(context).textTheme.labelLarge!.copyWith(
                          height: 1.7,
                          color: AppColors.primeryColor,
                          fontWeight: FontWeight.w400,
                          fontSize: 14), // Replace with AppColors.primeryColor
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20),
          child: Text(
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been.",
            style: Theme.of(context).textTheme.labelLarge!.copyWith(
                height: 1.7,
                color: AppColors.primeryColor,
                fontWeight: FontWeight.w400,
                fontSize: 14), // Replace with AppColors.primeryColor
          ),
        ),
        const SizedBox(height: 10,),
        Padding(
          padding: const EdgeInsets.only(left:20.0,right: 20),
          child: RatingBar.builder(
            initialRating: 4,
            minRating: 1,
            direction: Axis.horizontal,
            allowHalfRating: true,
            itemCount: 5,
            itemPadding: const EdgeInsets.symmetric(
                horizontal: 2.0), // Reduce space between stars
            itemBuilder: (context, _) => const Icon(
              Icons.star,
              color: AppColors.primeryColor,
            ),
            onRatingUpdate: (rating) {
              print(rating);
            },
            ignoreGestures: true, // Makes it non-editable
            itemSize: 30, // Adjust the star size
          ),
        ),
      ],
    );
  }
}
