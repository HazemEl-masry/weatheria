import 'package:flutter/material.dart';
import 'package:weather_app/features/search/presentation/widgets/search_body_widget.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: SearchBodyWidget());
  }
}
