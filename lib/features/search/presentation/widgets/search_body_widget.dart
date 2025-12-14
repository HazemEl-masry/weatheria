import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';

class SearchBodyWidget extends StatelessWidget {
  const SearchBodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: 150.0.h,
        left: 20.0.w,
        right: 20.0.w
      ),
      child: Column(
        children: [
          TextFormField(
            onSaved: (cityName) {},
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15.0.r)
              ),
              hintText: "Enter city name",
              prefixIcon: const Icon(Icons.search),
              suffixIcon: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.clear),
              ),
            ),
          ),
          // SizedBox(height: 50.0.h),
          Lottie.asset("assets/animation/search_animation.json")
        ],
      ),
    );
  }
}