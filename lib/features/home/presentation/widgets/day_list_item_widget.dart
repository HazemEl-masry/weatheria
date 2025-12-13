import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DayListItemWidget extends StatelessWidget {
  const DayListItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 110.0.w,
      padding: EdgeInsets.only(
        top: 2.0.h,
        right: 6.0.w,
        bottom: 2.0.h
      ),
      decoration: BoxDecoration(
        // color: const Color(0xFF5F4BE4),
        color: const Color.fromARGB(255, 189, 209, 237),
        borderRadius: BorderRadius.circular(15.0.r),
        image: const DecorationImage(
          image: CachedNetworkImageProvider(
            "https://cdn.creazilla.com/icons/7911203/weather-icon-md.png",
          ),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            "25\u2103",
            style: TextStyle(
              fontSize: 20.0.sp,
              // color: Colors.white
            ),
          ),
          const Spacer(),
          Center(
            child: Text(
              "17 DCE",
              style: TextStyle(
                fontSize: 20.0.sp,
                // color: Colors.white,
                fontWeight: FontWeight.bold
              ),
            ),
          ),
        ],
      ),
    );
  }
}
