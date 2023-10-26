import 'package:boring_app/themes/boring_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../bloc/activity_bloc.dart';
import '../model/activity_model.dart';
import '../utils/converters.dart';

class ActivityDetailPage extends StatelessWidget {
  final Activity activity;
  final List<Activity> activities;
  final ActivityBloc activityBloc;

  const ActivityDetailPage({required this.activity, required this.activities, required this.activityBloc, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const BoringColors().pageBackground,
      appBar: AppBar(
        backgroundColor: const BoringColors().mainColor,
        elevation: 1,
      ),
      body: BlocBuilder<ActivityBloc, ActivityState>(
          bloc: BlocProvider.of<ActivityBloc>(context),
          builder: (context, state) {
            return Column(
              children: [
                Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    Hero(
                      tag: 'activityImage${activity.key}',
                      child: Image.asset(
                        activityImage(activity.type!),
                        height: 160.w,
                        fit: BoxFit.cover,
                        width: double.infinity,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        BlocProvider.of<ActivityBloc>(context)
                            .add((ActivityEvent.likeActivity(activity: activity, activities: activities)));
                      },
                      child: Container(
                        padding: EdgeInsets.all(8.w),
                        margin: EdgeInsets.only(right: 16.w, bottom: 8.w),
                        width: 48.w,
                        decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(8.w)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              state.activities.firstWhere((element) => element.key == activity.key).liked!
                                  ? Icons.favorite
                                  : Icons.favorite_border_outlined,
                              size: 16.w,
                              color: const BoringColors().mainColor,
                            ),
                            Text(
                              state.activities
                                  .firstWhere((element) => element.key == activity.key)
                                  .totalLikes
                                  .toString(),
                              style: TextStyle(
                                  fontSize: 14.w,
                                  color: state.activities.firstWhere((element) => element.key == activity.key).liked!
                                      ? const BoringColors().mainColor
                                      : const BoringColors().primaryTextColor,
                                  fontWeight: FontWeight.w400),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ],
            );
          }),
    );
  }
}
