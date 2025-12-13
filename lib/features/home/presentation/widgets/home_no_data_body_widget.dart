import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';

class HomeNoDataBodyWidget extends StatelessWidget {
  const HomeNoDataBodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).size.height / 3,
        right: 20.0.w,
        left: 20.0.w
      ),
      child: Column(
        children: [
          Lottie.asset("assets/animation/no_weather.json"),
          SizedBox(height: 20.0.h),
          Text(
            "No Weather yet start search to get weather .",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20.0.sp,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }
}
