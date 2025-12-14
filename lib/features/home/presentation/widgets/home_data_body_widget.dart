import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather_app/features/home/presentation/cubits/day_weather_cubit/day_weather_cubit.dart';
import 'package:weather_app/features/home/presentation/widgets/data_body_widget.dart';
import 'package:weather_app/features/home/presentation/widgets/day_list_widget.dart';

class HomeDataBodyWidget extends StatelessWidget {
  const HomeDataBodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => DayWeatherCubit(),
      child: Padding(
        padding: EdgeInsets.only(top: 3.h, right: 20.0.w, left: 20.0.w),
        child: Column(
          children: [
            const DayListWidget(),
            SizedBox(height: 20.0.h),
            const DataBodyWidget(),
          ],
        ),
      ),
    );
  }
}
