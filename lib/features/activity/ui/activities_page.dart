import 'package:boring_app/features/activity/bloc/activity_bloc.dart';
import 'package:boring_app/features/activity/ui/components/list_activities.dart';
import 'package:boring_app/features/activity/ui/components/list_loading.dart';
import 'package:boring_app/themes/boring_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'components/header_list_activities.dart';

class ActivitiesPage extends StatefulWidget {
  const ActivitiesPage({super.key});

  @override
  State<ActivitiesPage> createState() => _ActivitiesPageState();
}

class _ActivitiesPageState extends State<ActivitiesPage> {
  final ActivityBloc _activityBloc = ActivityBloc();

  @override
  void initState() {
    super.initState();
    _activityBloc.add((const ActivityEvent.loading(loading: true)));
    _activityBloc.add(const ActivityEvent.getActivities());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const BoringColors().pageBackground,
      body: BlocBuilder<ActivityBloc, ActivityState>(
        bloc: _activityBloc,
        builder: (context, state) {
          return Stack(
            children: [
              Container(
                height: 232.w,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: const BoringColors().mainColor,
                    borderRadius: BorderRadius.vertical(bottom: Radius.elliptical(160.r, 60.r))),
              ),
              Padding(
                padding: EdgeInsets.only(top: 48.w),
                child: BlocProvider(
                  create: (_) => _activityBloc,
                  child: CustomScrollView(
                    shrinkWrap: true,
                    physics: const BouncingScrollPhysics(),
                    slivers: [

                      HeaderListActivities(activityTypeFilterSelected: state.activityTypeFilter),
                      if (!state.isLoading)
                        ListActivities(activities: state.activities,),
                      if (state.isLoading) const ListLoading()
                    ],
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
