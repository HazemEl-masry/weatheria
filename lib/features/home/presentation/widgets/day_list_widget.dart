import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather_app/features/home/presentation/widgets/day_list_item_widget.dart';

class DayListWidget extends StatelessWidget {
  const DayListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 105.0.h,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const DayListItemWidget();
        },
        separatorBuilder: (context, index) => SizedBox(width: 20.0.w),
        itemCount: 5,
      ),
    );
  }
}
