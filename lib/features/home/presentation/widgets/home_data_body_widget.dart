import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather_app/features/home/presentation/widgets/day_list_item_widget.dart';
import 'package:weather_app/features/home/presentation/widgets/day_list_widget.dart';

class HomeDataBodyWidget extends StatelessWidget {
  const HomeDataBodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: 50.h,
        right: 20.0.w,
        left: 20.0.w
      ),
      child: const Column(
        children: [
          DayListWidget(),
        ],
      ),
    );
  }
}
