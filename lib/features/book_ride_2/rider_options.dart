import 'package:flutter/material.dart';
import 'package:taxi_passenger_app/utils/color/app_colors.dart';
import 'package:taxi_passenger_app/widgets/custom_images.dart';

class RiderOptions extends StatefulWidget {
  const RiderOptions({Key? key}) : super(key: key);

  @override
  State<RiderOptions> createState() => _RiderOptionsState();
}

class _RiderOptionsState extends State<RiderOptions> {
  int _selectedValue = 0;
  final Map<String, dynamic> riders = {
    'My Self': Icons.person,
    'John Doe     6391 Elgin, St.Celina, Delawa..': 'assets/images/jicon.png',
    'Choose another contacts': 'assets/images/contacticon.png',
  };

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: riders.length,
      itemBuilder: (BuildContext context, int index) {
        String key = riders.keys.elementAt(index);
        return ListTile(
          contentPadding: EdgeInsets.zero,
          dense: true,
          leading: SizedBox(
            width: 100,
            child: Row(
              children: [
                Radio(
                  activeColor: AppColors.primeryColor,
                  value: index,
                  groupValue: _selectedValue,
                  onChanged: (int? value) {
                    setState(() {
                      _selectedValue = value!;
                    });
                  },
                ),
                SizedBox(
                  width: 10,
                ),
                riders[key] is IconData
                
                    ? 
                    Icon(
                        riders[key],
                        size: 24,
                        color: AppColors.primeryColor,
                      )
                    : Container(
                        height: 28,
                        width: 32,
                        child: CustomPngImage(
                          imageName: riders[key],
                          boxFit: BoxFit.fill,
                        ),
                        
                        ),
              ],
            ),
          ),
          title: Text(key,
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  color: AppColors.primeryColor,
                  fontSize: 13,
                  fontWeight: FontWeight.w500)),
        );
      },
    );
  }
}
