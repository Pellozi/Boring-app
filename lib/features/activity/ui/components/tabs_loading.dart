import 'package:card_loading/card_loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TabsLoading extends StatelessWidget {
  const TabsLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
    CardLoading(
        height: 40.w,
        width: 120.w,
        borderRadius: BorderRadius.circular(10.w),),

    Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.w),
      child: CardLoading(
          width: 120.w,
          height: 40.w,
          borderRadius: BorderRadius.circular(10.w),),
    ),
    CardLoading(
        width: 120.w,
        height: 40.w,
        borderRadius: BorderRadius.circular(10.w),),
      ],
    );
  }
}
