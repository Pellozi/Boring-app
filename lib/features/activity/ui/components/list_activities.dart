import 'package:boring_app/features/activity/ui/components/activity_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../model/activity_model.dart';

class ListActivities extends StatefulWidget {
  final List<Activity> activities;

  const ListActivities({
    required this.activities,
    Key? key,
  }) : super(key: key);

  @override
  State<ListActivities> createState() => _ListActivitiesState();
}

class _ListActivitiesState extends State<ListActivities> {
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          return ActivityCard(activity: widget.activities[index], activities: widget.activities);
        },
        childCount: widget.activities.length,
      ),
    );
  }
}
