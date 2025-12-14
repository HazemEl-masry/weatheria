import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather_app/features/home/presentation/widgets/weather_details_widget.dart';

class DataBodyWidget extends StatelessWidget {
  const DataBodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Center(
          child: Text(
            "Sunny",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 30.0.sp, fontWeight: FontWeight.bold),
          ),
        ),
        Row(
          children: [
            CachedNetworkImage(
              imageUrl:
                  "https://cdn.creazilla.com/icons/7911203/weather-icon-md.png",
              width: 180.w,
            ),
            SizedBox(width: 20.0.w),
            Row(
              children: [
                Icon(Icons.thermostat_sharp, size: 30.0.sp),
                Text(
                  "50.0\u2103",
                  style: TextStyle(
                    fontSize: 30.0.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ],
        ),
        const WeatherDetailsWidget(),
      ],
    );
  }
}
