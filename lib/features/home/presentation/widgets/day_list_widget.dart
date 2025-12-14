import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather_app/features/home/presentation/cubits/day_weather_cubit/day_weather_cubit.dart';
import 'package:weather_app/features/home/presentation/widgets/day_list_item_widget.dart';

class DayListWidget extends StatelessWidget {
  const DayListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 105.0.h,
      child: BlocBuilder<DayWeatherCubit, DayWeatherState>(
        builder: (context, state) {
          if (state is DayWeatherLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is DayWeatherSuccess) {
            return ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return DayListItemWidget(dayModel: state.dayModel[index]);
              },
              separatorBuilder: (context, index) => SizedBox(width: 20.0.w),
              itemCount: state.dayModel.length,
            );
          } else if (state is DayWeatherError) {
            return Center(
              child: Text(
                'Error: ${state.message}',
                style: const TextStyle(color: Colors.red),
              ),
            );
          }
          return const SizedBox();
        },
      ),
    );
  }
}
