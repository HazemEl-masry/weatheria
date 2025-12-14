import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather_app/features/home/data/models/weather_details_model.dart';

class WeatherDetailsWidget extends StatelessWidget {
  const WeatherDetailsWidget({super.key, required this.weatherDetails});
  final WeatherDetailsModel weatherDetails;

  @override
  Widget build(BuildContext context) {
    List<IconData> icons = [
      Icons.thermostat,
      Icons.thermostat,
      Icons.cloud,
      Icons.water_drop,
      Icons.air,
      Icons.cloudy_snowing,
    ];
    List<int> values = [
      weatherDetails.maxtemp,
      weatherDetails.mintemp,
      weatherDetails.maxwind,
      weatherDetails.totalprecip,
      weatherDetails.avgvis,
      weatherDetails.avghumidity,
    ];
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 6,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 15,
        mainAxisSpacing: 10,
      ),
      itemBuilder: (context, index) {
        return Container(
          padding: EdgeInsets.only(
            top: 8.0.h,
            left: 8.0.w,
            right: 8.0.w,
            bottom: 8.0.h,
          ),
          height: 50.0.h,
          width: 50.0.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.0.r),
            color: const Color.fromARGB(255, 189, 209, 237),
          ),
          child: Column(
            children: [
              Icon(icons[index], size: 30.r),
              const Spacer(),
              Text(
                "${values[index]}\u2103",
                style: TextStyle(
                  fontSize: 20.0.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
