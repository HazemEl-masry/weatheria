import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weather_app/core/router/app_router.dart';
import 'package:weather_app/features/home/presentation/cubits/theme_cubit/theme_cubit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return BlocProvider(
          create: (context) => ThemeCubit(),
          child: BlocBuilder<ThemeCubit, ThemeState>(
            builder: (context, state) {
              bool isDark = state is DarkTheme;
              return MaterialApp.router(
                debugShowCheckedModeBanner: false,
                title: 'Weatheria',
                theme: ThemeData(
                  brightness: isDark ? Brightness.dark : Brightness.light,
                  // colorScheme: ColorScheme.fromSeed(
                  //   seedColor: Colors.deepPurple,
                  //   brightness: Brightness.dark
                  // ),
                  textTheme: GoogleFonts.ubuntuTextTheme(
                    Theme.of(context).textTheme,
                  ),
                ),
                routerConfig: appRouter,
              );
            },
          ),
        );
      },
    );
  }
}
