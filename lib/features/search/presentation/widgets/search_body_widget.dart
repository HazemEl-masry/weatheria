import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';

import 'package:go_router/go_router.dart';

class SearchBodyWidget extends StatefulWidget {
  const SearchBodyWidget({super.key});

  @override
  State<SearchBodyWidget> createState() => _SearchBodyWidgetState();
}

class _SearchBodyWidgetState extends State<SearchBodyWidget> {
  final TextEditingController _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 150.0.h, left: 20.0.w, right: 20.0.w),
      child: Column(
        children: [
          TextFormField(
            controller: _controller,
            onFieldSubmitted: (cityName) {
              if (cityName.trim().isNotEmpty) {
                context.pop(cityName);
              }
            },
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15.0.r),
              ),
              hintText: "Enter city name",
              prefixIcon: const Icon(Icons.search),
              suffixIcon: IconButton(
                onPressed: () {
                  _controller.clear();
                },
                icon: const Icon(Icons.clear),
              ),
            ),
          ),
          // SizedBox(height: 50.0.h),
          Lottie.asset("assets/animation/search_animation.json"),
        ],
      ),
    );
  }
}
