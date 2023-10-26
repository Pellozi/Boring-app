import 'package:card_loading/card_loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ListLoading extends StatelessWidget {
  const ListLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
        child: Column(
      children: [
        CardLoading(
            height: 232.w, borderRadius: BorderRadius.circular(20.w), margin: EdgeInsets.symmetric(horizontal: 24.w)),
        CardLoading(
            height: 232.w,
            borderRadius: BorderRadius.circular(20.w),
            margin: EdgeInsets.symmetric(horizontal: 24.w, vertical: 8.w)),
        CardLoading(
            height: 232.w,
            borderRadius: BorderRadius.circular(20.w),
            margin: EdgeInsets.symmetric(horizontal: 24.w, vertical: 8.w)),
      ],
    ));
  }
}
