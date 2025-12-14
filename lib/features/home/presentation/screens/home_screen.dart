import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather_app/features/home/presentation/cubits/theme_cubit/theme_cubit.dart';
import 'package:weather_app/features/home/presentation/widgets/custom_bottom_nav.dart';
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
          style: TextStyle(fontSize: 25.0.sp, fontWeight: FontWeight.bold),
        ),
        actions: [
          BlocBuilder<ThemeCubit, ThemeState>(
            builder: (context, state) {
              IconData icon;
              if (state is DarkTheme) {
                icon = Icons.light_mode;
              } else if (state is LightTheme) {
                icon = Icons.dark_mode;
              } else {
                icon = Icons.light_mode;
              }
              return IconButton(
                onPressed: () {
                  context.read<ThemeCubit>().changeTheme(icon: icon);
                },
                icon: Icon(icon),
                iconSize: 25.h,
              );
            },
          ),
        ],
      ),
      body: Stack(
        children: [
          const HomeDataBodyWidget(),
          Positioned(
            right: 20.0.w,
            left: 20.0.w,
            bottom: 20.0.h,
            child: const CustomBottomNav(),
          ),
        ],
      ),
    );
  }
}
