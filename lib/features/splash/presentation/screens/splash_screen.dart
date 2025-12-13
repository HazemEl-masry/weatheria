import 'package:flutter/material.dart';
import 'package:weather_app/features/splash/presentation/widgets/splash_body_widget.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SplashBodyWidget()
    );
  }
}
