import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather_app/features/home/data/repos/weather_details_repo.dart';
import 'package:weather_app/features/home/presentation/cubits/day_weather_cubit/day_weather_cubit.dart';
import 'package:weather_app/features/home/presentation/cubits/weather_details_cubit/weather_details_cubit.dart';
import 'package:weather_app/features/home/presentation/widgets/data_body_widget.dart';
import 'package:weather_app/features/home/presentation/widgets/day_list_widget.dart';

class HomeDataBodyWidget extends StatelessWidget {
  const HomeDataBodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => DayWeatherCubit()),
        BlocProvider(
          create: (context) =>
              WeatherDetailsCubit(weatherDetailsRepo: WeatherDetailsRepoImpl()),
        ),
      ],
      child: const _HomeDataBodyContent(),
    );
  }
}

class _HomeDataBodyContent extends StatefulWidget {
  const _HomeDataBodyContent();

  @override
  State<_HomeDataBodyContent> createState() => _HomeDataBodyContentState();
}

class _HomeDataBodyContentState extends State<_HomeDataBodyContent> {
  @override
  void initState() {
    super.initState();
    // Trigger weather data fetching when widget is first created
    // Using 'Cairo' as default city, similar to DayWeatherCubit
    context.read<WeatherDetailsCubit>().getWeatherDetails(cityName: 'Cairo');
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 3.h, right: 20.0.w, left: 20.0.w),
      child: Column(
        children: [
          const DayListWidget(),
          SizedBox(height: 20.0.h),
          BlocBuilder<WeatherDetailsCubit, WeatherDetailsState>(
            builder: (context, state) {
              if (state is WeatherDetailsLoaded) {
                return DataBodyWidget(weatherDetails: state.weatherDetails);
              } else if (state is WeatherDetailsLoading) {
                return const Center(child: CircularProgressIndicator());
              } else if (state is WeatherDetailsError) {
                return Center(child: Text(state.message));
              }
              return const SizedBox(); // Or a placeholder for initial state
            },
          ),
        ],
      ),
    );
  }
}
