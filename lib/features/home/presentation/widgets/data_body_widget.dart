import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather_app/features/home/data/models/weather_details_model.dart';
import 'package:weather_app/features/home/presentation/widgets/weather_details_widget.dart';

class DataBodyWidget extends StatelessWidget {
  const DataBodyWidget({super.key, required this.weatherDetails});
  final WeatherDetailsModel weatherDetails;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Center(
          child: Text(
            weatherDetails.condition,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 30.0.sp,
              fontWeight: FontWeight.bold,
              color: Theme.of(context).colorScheme.onSurface,
            ),
          ),
        ),
        Row(
          children: [
            CachedNetworkImage(imageUrl: weatherDetails.icon, width: 180.w),
            // SizedBox(width: 20.0.w),
            Column(
              children: [
                Row(
                  children: [
                    Icon(Icons.location_on, size: 30.0.sp),
                    Text(
                      weatherDetails.name,
                      style: TextStyle(
                        fontSize: 30.0.sp,
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).colorScheme.onSurface,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.thermostat_sharp, size: 30.0.sp),
                    Text(
                      "${weatherDetails.temp}\u2103",
                      style: TextStyle(
                        fontSize: 30.0.sp,
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).colorScheme.onSurface,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
        WeatherDetailsWidget(weatherDetails: weatherDetails),
      ],
    );
  }
}
