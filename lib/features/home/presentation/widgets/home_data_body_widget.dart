import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather_app/features/home/presentation/cubits/weather_details_cubit/weather_details_cubit.dart';
import 'package:weather_app/features/home/presentation/widgets/data_body_widget.dart';
import 'package:weather_app/features/home/presentation/widgets/day_list_widget.dart';
import 'package:weather_app/features/home/presentation/widgets/home_no_data_body_widget.dart';

class HomeDataBodyWidget extends StatelessWidget {
  const HomeDataBodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WeatherDetailsCubit, WeatherDetailsState>(
      builder: (context, state) {
        if (state is WeatherDetailsInitial) {
          return const HomeNoDataBodyWidget();
        } else if (state is WeatherDetailsLoading) {
          return const Center(child: CircularProgressIndicator());
        } else if (state is WeatherDetailsError) {
          return Center(child: Text(state.message));
        } else if (state is WeatherDetailsLoaded) {
          return Padding(
            padding: EdgeInsets.only(top: 3.h, right: 20.0.w, left: 20.0.w),
            child: Column(
              children: [
                const DayListWidget(),
                SizedBox(height: 20.0.h),
                DataBodyWidget(weatherDetails: state.weatherDetails),
              ],
            ),
          );
        }
        return const SizedBox();
      },
    );
  }
}
