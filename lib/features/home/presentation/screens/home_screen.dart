
import 'package:flutter/material.dart';
import 'package:weather_app/features/home/presentation/widgets/home_no_data_body_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: HomeNoDataBodyWidget(),
    );
  }
}