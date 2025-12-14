import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
        // SizedBox(height: 10.0.h),
        GridView.builder(
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
                  Icon(Icons.cloudy_snowing, size: 50.r),
                  const Spacer(),
                  Text(
                    "20.0\u2103",
                    style: TextStyle(
                      fontSize: 20.0.sp,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ],
    );
  }
}
