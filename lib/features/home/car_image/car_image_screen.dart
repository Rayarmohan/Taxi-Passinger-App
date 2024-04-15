import 'package:flutter/material.dart';
import 'package:taxi_passenger_app/utils/color/app_colors.dart';
import 'package:taxi_passenger_app/widgets/custom_app_bar.dart';
import 'package:taxi_passenger_app/widgets/custom_images.dart';
import 'package:taxi_passenger_app/features/home/car_image/image_data.dart';

// ignore: use_key_in_widget_constructors
class CarImageScreen extends StatefulWidget {
  @override
  // ignore: library_private_types_in_public_api
  _CarImageScreenState createState() => _CarImageScreenState();
}

class _CarImageScreenState extends State<CarImageScreen> {
  late ImageData _selectedImage;
  final List<ImageData> _images = [
    ImageData('assets/images/car1.png'),
    ImageData('assets/images/car2.png'),
    ImageData('assets/images/car3.png'),
    ImageData('assets/images/car4.png'),
  ];

  @override
  void initState() {
    _selectedImage = _images.first;
    super.initState();
  }

  void _setSelectedImage(ImageData image) {
    setState(() {
      _selectedImage = image;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: Text('Car',
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
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: SizedBox(
                  width: 350,
                  height: 350,
                  child: Image.asset(
                    _selectedImage.imagePath,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: SizedBox(
                height: 100,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: _images.length,
                  itemBuilder: (context, index) {
                    // Add spacing between items
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: GestureDetector(
                        onTap: () {
                          _setSelectedImage(_images[index]);
                        },
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: SizedBox(
                            width: 80,
                            height: 80,
                            child: Image.asset(
                              _images[index].imagePath,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
