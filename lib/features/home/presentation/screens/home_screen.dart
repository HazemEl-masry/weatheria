
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather_app/features/home/presentation/widgets/home_data_body_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actionsPadding: EdgeInsets.only(right: 10.0.w),
        title: Text(
          "Weatheria",
          style: TextStyle(
            fontSize: 25.0.sp,
            fontWeight: FontWeight.bold
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.dark_mode),
            iconSize: 25.h,
          ),
        ],
      ),
      body: const HomeDataBodyWidget(),
    );
  }
}