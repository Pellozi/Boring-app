import 'package:boring_app/features/activity/model/activity_model.dart';
import 'package:boring_app/themes/boring_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../bloc/activity_bloc.dart';
import '../../../../utils/converters.dart';
import '../activity_detail_page.dart';

class ActivityCard extends StatefulWidget {
  final Activity activity;
  final List<Activity> activities;

  const ActivityCard({required this.activity, required this.activities, super.key});

  @override
  State<ActivityCard> createState() => _ActivityCardState();
}

class _ActivityCardState extends State<ActivityCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (_) => BlocProvider.value(
                    value: BlocProvider.of<ActivityBloc>(context),
                    child: ActivityDetailPage(
                      activity: widget.activity,
                      activities: widget.activities,
                    ),
                  )),
        );
      },
      child: Container(
        margin: EdgeInsets.only(bottom: 8.w, left: 24.w, right: 24.w),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.w),
          color: Colors.white,
          boxShadow: [
            BoxShadow(color: const Color.fromRGBO(88, 88, 88, 0.05), blurRadius: 8.w, offset: const Offset(0, -2))
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(20.w)),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.w),
                color: widget.activity.booked!
                    ? const BoringColors().saveColor.withOpacity(0.2)
                    : const BoringColors().mainColor.withOpacity(0.2),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      capitalizeFirstLetter(widget.activity.type!),
                      style: TextStyle(
                        color:
                            widget.activity.booked! ? const BoringColors().saveColor : const BoringColors().mainColor,
                        fontWeight: FontWeight.w500,
                        fontSize: 16.w,
                      ),
                    ),
                    Icon(
                      activityIcon(widget.activity.type!),
                      color: widget.activity.booked! ? const BoringColors().saveColor : const BoringColors().mainColor,
                      size: 24.w,
                    )
                  ],
                ),
              ),
              Stack(
                alignment: Alignment.bottomRight,
                children: [
                  Hero(
                    tag: 'activityImage${widget.activity.key}',
                    child: Image.asset(
                      activityImage(widget.activity.type!),
                      height: 96.w,
                      fit: BoxFit.cover,
                      width: double.infinity,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      BlocProvider.of<ActivityBloc>(context)
                          .add((ActivityEvent.likeActivity(activity: widget.activity, activities: widget.activities)));
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
                            widget.activity.liked! ? Icons.favorite : Icons.favorite_border_outlined,
                            size: 16.w,
                            color: const BoringColors().mainColor,
                          ),
                          Text(
                            widget.activity.totalLikes.toString(),
                            style: TextStyle(
                                fontSize: 14.w,
                                color: widget.activity.liked!
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
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 16.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.person,
                                    size: 16.w,
                                    color: const BoringColors().secondaryTextColor,
                                  ),
                                  Text(
                                    '${widget.activity.participants.toString()}  |  Accessibility ${converterDoubleValue(widget.activity.accessibility!).toString()}/10',
                                    style: TextStyle(
                                        fontSize: 14.w,
                                        color: const BoringColors().secondaryTextColor,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.euro,
                                    size: 16.w,
                                    color: const BoringColors().mainColor,
                                  ),
                                  SizedBox(
                                    width: 8.w,
                                  ),
                                  Text(widget.activity.price == 0
                                      ? 'Free!'
                                      : '${converterDoubleValue(widget.activity.price!).toString()}/10'),
                                ],
                              )
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 8.w),
                            child: Text(
                              widget.activity.activity!,
                              style: TextStyle(fontSize: 16.w, color: const BoringColors().primaryTextColor),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
