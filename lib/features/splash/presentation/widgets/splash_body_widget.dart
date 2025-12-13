import 'package:flutter/widgets.dart';
import 'package:lottie/lottie.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SplashBodyWidget extends StatelessWidget {
  const SplashBodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: 50.0.h,
        right: 20.0.w,
        left: 20.0.w
      ),
      child: Column(
        children: [
          Lottie.asset("assets/animation/splash_weather.json")
        ],
      ),
    );
  }
}