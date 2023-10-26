import 'package:boring_app/themes/boring_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

import '../../../../components/content_bottom_shet.dart';
import '../../bloc/activity_bloc.dart';
import '../../../../utils/converters.dart';

class TabCard extends StatefulWidget {
  final String activityType;
  final String activityTypeFilterSelected;

  const TabCard(this.activityType, this.activityTypeFilterSelected, {super.key});

  @override
  State<TabCard> createState() => _TabCardState();
}

class _TabCardState extends State<TabCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (BlocProvider.of<ActivityBloc>(context).state.isLoading) {
          showMaterialModalBottomSheet(
            backgroundColor: Colors.transparent,
            context: context,
            builder: (context) => ContentBottomSheetWidget(
              title: 'Loading...',
              content: Padding(
                padding: EdgeInsets.all(24.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'The page is loading, please wait',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: const BoringColors().primaryTextColor, fontSize: 20.w),
                    ),
                    SizedBox(
                      height: 32.w,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        width: double.infinity,
                        padding: EdgeInsets.all(16.w),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.w),
                          color: const BoringColors().saveColor,
                        ),
                        child: Center(
                          child: Text(
                            'Ok, I got it',
                            style: TextStyle(color: Colors.white, fontSize: 16.w, fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
          return;
        }
        if (BlocProvider.of<ActivityBloc>(context).state.activityTypeFilter == widget.activityType) {
          BlocProvider.of<ActivityBloc>(context).add((const ActivityEvent.setActivityFilter(filter: '')));
          BlocProvider.of<ActivityBloc>(context).add((const ActivityEvent.loading(loading: true)));
          BlocProvider.of<ActivityBloc>(context).add((const ActivityEvent.getActivitiesByType(type: '')));
          return;
        }
        BlocProvider.of<ActivityBloc>(context).add((ActivityEvent.setActivityFilter(filter: widget.activityType)));
        BlocProvider.of<ActivityBloc>(context).add((const ActivityEvent.loading(loading: true)));
        BlocProvider.of<ActivityBloc>(context).add((ActivityEvent.getActivitiesByType(type: widget.activityType)));
      },
      child: Container(
        padding: EdgeInsets.all(8.w),
        margin: EdgeInsets.only(right: 8.w),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.r),
            color: widget.activityTypeFilterSelected == widget.activityType
                ? Colors.white
                : const BoringColors().mainColor,
            border: Border.all(width: 1.w, color: Colors.white)),
        child: Row(
          children: [
            Icon(activityIcon(widget.activityType),
                color: widget.activityTypeFilterSelected == widget.activityType
                    ? const BoringColors().mainColor
                    : Colors.white),
            SizedBox(
              width: 8.w,
            ),
            Text(
              capitalizeFirstLetter(widget.activityType),
              style: TextStyle(
                  fontSize: 14.w,
                  color: widget.activityTypeFilterSelected == widget.activityType
                      ? const BoringColors().mainColor
                      : Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
