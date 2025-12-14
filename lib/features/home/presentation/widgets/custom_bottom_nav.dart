import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class CustomBottomNav extends StatelessWidget {
  const CustomBottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.h,
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(25.r),
        ),
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
          _NavIcon(
            icon: const Icon(Icons.home),
            onPressed: () {},
          ),
          _NavIcon(
            icon: const Icon(Icons.search),
            onPressed: () {
              context.push("/SearchScreen");
            },
          ),
          _NavIcon(
            icon: const Icon(Icons.category),
            onPressed: () {},
          ),
          _NavIcon(
            icon: const Icon(Icons.settings),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}


class _NavIcon extends StatelessWidget {
  final Widget icon;
  final void Function()? onPressed;

  const _NavIcon({required this.icon,required this.onPressed});

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
