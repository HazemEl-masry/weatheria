import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:weather_app/features/home/presentation/cubits/day_weather_cubit/day_weather_cubit.dart';
import 'package:weather_app/features/home/presentation/cubits/weather_details_cubit/weather_details_cubit.dart';

class CustomBottomNav extends StatelessWidget {
  const CustomBottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.h,
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(25.r)),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 12.r,
            offset: const Offset(0, 6),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _NavIcon(icon: const Icon(Icons.home), onPressed: () {}),
          _NavIcon(
            icon: const Icon(Icons.search),
            onPressed: () async {
              final cityName = await context.push<String>("/SearchScreen");
              if (cityName != null && context.mounted) {
                // Trigger both cubits to update weather data
                context.read<WeatherDetailsCubit>().getWeatherDetails(
                  cityName: cityName,
                );
                context.read<DayWeatherCubit>().getDayWeather(
                  cityName: cityName,
                );
              }
            },
          ),
          _NavIcon(icon: const Icon(Icons.category), onPressed: () {}),
          _NavIcon(icon: const Icon(Icons.settings), onPressed: () {}),
        ],
      ),
    );
  }
}

class _NavIcon extends StatelessWidget {
  final Widget icon;
  final void Function()? onPressed;

  const _NavIcon({required this.icon, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: icon,
      iconSize: 26.sp,
      color: Colors.black87,
    );
  }
}
