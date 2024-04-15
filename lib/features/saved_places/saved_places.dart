import 'package:flutter/material.dart';
import 'package:taxi_passenger_app/features/saved_places/widgets/custom_searchbar.dart';
import 'package:taxi_passenger_app/utils/color/app_colors.dart';
import 'package:taxi_passenger_app/widgets/custom_app_bar.dart';
import 'package:taxi_passenger_app/widgets/custom_button.dart';
import 'package:taxi_passenger_app/widgets/custom_images.dart';

class SavedPlacesScreen extends StatefulWidget {
  // ignore: prefer_const_constructors_in_immutables, use_super_parameters
  SavedPlacesScreen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _SavedPlacesScreenState createState() => _SavedPlacesScreenState();
}

class _SavedPlacesScreenState extends State<SavedPlacesScreen> {
  int _selectedValue = 0;
  List<String> places = [
    'KwaZulu-Natal, 219 Florida Rd...',
    'Durban, 4000, 219 Florida Rd...',
    'KwaZulu-Natal, 219 Florida Rd...',
    'Durban, 4000, 219 Florida Rd...',
    'Durban, 4000, 219 Florida Rd...',
    'Durban, 4000, 219 Florida Rd...',
    'KwaZulu-Natal, 219 Florida Rd....',
    'KwaZulu-Natal, 219 Florida Rd...',
    'Durban, 4000, 219 Florida Rd...',
    'KwaZulu-Natal, 219 Florida Rd...',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: Text('Saved Places',
            style: Theme.of(context)
                .textTheme
                .headlineMedium!
                .copyWith(height: 1.7, color: AppColors.primeryColor)),
        leading: const Padding(
          padding: EdgeInsets.all(8),
          child: CustomPngImage(
            imageName: "assets/images/arrow_back.png",
            height: 30,
            width: 30,
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(30, 20, 30, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomSearchBar(
                  hintText: 'Search your place',
                  leadingIcon: Icon(
                    Icons.search,
                    color: AppColors.primeryColor,
                  ),
                  trailingIcon: Icon(
                    Icons.close_rounded,
                    color: AppColors.primeryColor,
                  )),
              const SizedBox(height: 20), // Adjust spacing as needed
              Expanded(
                child: ListView.builder(
                  itemCount: places.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      contentPadding: EdgeInsets.zero,
                      dense: true,
                      title: Text(
                        places[index],
                        style: Theme.of(context).textTheme.bodyText1!.copyWith(
                              color: AppColors.primeryColor,
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                            ),
                      ),
                      leading: Radio(
                        activeColor: AppColors.primeryColor,
                        value: index,
                        groupValue: _selectedValue,
                        onChanged: (int? value) {
                          setState(() {
                            _selectedValue = value!;
                          });
                        },
                      ),
                      trailing: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            border: Border.all(color: AppColors.primeryColor)),
                        child: const Icon(
                          Icons.close_outlined,
                          color: AppColors.primeryColor,
                          size: 15,
                        ),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              SizedBox(
                height: 40,
                child: Padding(
                  padding: const EdgeInsets.only(left: 5.0, right: 5.0),
                  child: CustomButton(
                    onPressed: () {},
                    child: Text(
                      'Continue',
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium!
                          .copyWith(fontSize: 15, color: AppColors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
