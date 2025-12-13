import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SplashBodyWidget extends StatelessWidget {
  const SplashBodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 150.0.h, right: 20.0.w, left: 20.0.w),
      child: Column(
        children: [
          Text("Weatheria", style: GoogleFonts.pacifico(fontSize: 50.0.sp)),
          SizedBox(height: 30.0.h),
          Lottie.asset("assets/animation/animation.json"),
        ],
      ),
    );
  }
}
