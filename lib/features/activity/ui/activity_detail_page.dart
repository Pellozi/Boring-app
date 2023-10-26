import 'package:boring_app/themes/boring_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

import '../../../components/content_bottom_shet.dart';
import '../../../utils/url_launchers.dart';
import '../bloc/activity_bloc.dart';
import '../model/activity_model.dart';
import '../../../utils/converters.dart';

class ActivityDetailPage extends StatelessWidget {
  final Activity activity;
  final List<Activity> activities;

  const ActivityDetailPage({required this.activity, required this.activities, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const BoringColors().pageBackground,
      appBar: AppBar(
        backgroundColor: const BoringColors().mainColor,
        elevation: 1,
        centerTitle: true,
        title: Text(capitalizeFirstLetter(activity.type!),
            style: TextStyle(fontSize: 16.w, color: Colors.white, fontWeight: FontWeight.w600)),
      ),
      body: BlocBuilder<ActivityBloc, ActivityState>(
          bloc: BlocProvider.of<ActivityBloc>(context),
          builder: (context, state) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: ListView(
                    shrinkWrap: true,
                    children: [
                      _header(context, state),
                      _body(),
                    ],
                  ),
                ),
                _bottom(context, state)
              ],
            );
          }),
    );
  }

  Widget _header(BuildContext context, ActivityState state) {
    return Stack(
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
            context.read<ActivityBloc>().add((ActivityEvent.likeActivity(
                activity: state.activities.firstWhere((element) => element.key == activity.key),
                activities: state.activities)));
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
                  context
                              .read<ActivityBloc>()
                              .state
                              .activities
                              .firstWhere((element) => element.key == activity.key)
                              .liked ==
                          true
                      ? Icons.favorite
                      : Icons.favorite_border_outlined,
                  size: 16.w,
                  color: const BoringColors().mainColor,
                ),
                Text(
                  context
                      .read<ActivityBloc>()
                      .state
                      .activities
                      .firstWhere((element) => element.key == activity.key)
                      .totalLikes
                      .toString(),
                  style: TextStyle(
                      fontSize: 14.w,
                      color: context
                                  .read<ActivityBloc>()
                                  .state
                                  .activities
                                  .firstWhere((element) => element.key == activity.key)
                                  .liked ==
                              true
                          ? const BoringColors().mainColor
                          : const BoringColors().primaryTextColor,
                      fontWeight: FontWeight.w400),
                )
              ],
            ),
          ),
        )
      ],
    );
  }

  Widget _body() {
    return Padding(
      padding: EdgeInsets.all(24.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () {
              openGoogleMaps(activity.locality!);
            },
            child: Row(
              children: [
                Icon(
                  Icons.pin_drop_outlined,
                  color: const BoringColors().saveColor,
                  size: 16.w,
                ),
                SizedBox(
                  width: 8.w,
                ),
                Expanded(
                  child: Text(
                    activity.locality!,
                    style:
                        TextStyle(color: const BoringColors().saveColor, fontSize: 12.w, fontWeight: FontWeight.w600),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 16.w,
          ),
          Text(
            activity.activity!,
            style: TextStyle(color: const BoringColors().primaryTextColor, fontSize: 24.w, fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: 8.w,
          ),
          Text(
            activity.description!,
            style:
                TextStyle(color: const BoringColors().secondaryTextColor, fontSize: 16.w, fontWeight: FontWeight.w400),
          ),
          SizedBox(
            height: 16.w,
          ),
          Wrap(
            direction: Axis.horizontal,
            runSpacing: 8.w,
            spacing: 8.w,
            children: [
              extraInformationCard(
                  icon: Icons.euro,
                  title: 'Price',
                  value: activity.price == 0 ? 'Free!' : '${converterDoubleValue(activity.price!).toString()}/10'),
              extraInformationCard(
                  icon: Icons.accessibility_new,
                  title: 'Accessibility',
                  value: '${converterDoubleValue(activity.accessibility!).toString()}/10'),
              extraInformationCard(icon: Icons.people, title: 'Participants', value: activity.participants.toString()),
            ],
          )
        ],
      ),
    );
  }

  Widget extraInformationCard({required IconData icon, required String title, required String value}) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 2.w, vertical: 8.w),
      width: 96.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.w),
        color: const BoringColors().mainColor.withOpacity(0.2),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                size: 12.w,
                color: const BoringColors().mainColor,
              ),
              SizedBox(
                width: 2.w,
              ),
              Text(
                title,
                style: TextStyle(color: const BoringColors().mainColor, fontSize: 10.sp, fontWeight: FontWeight.w600),
              )
            ],
          ),
          SizedBox(
            height: 8.w,
          ),
          Text(
            value,
            style: TextStyle(color: const BoringColors().primaryTextColor, fontSize: 20.w, fontWeight: FontWeight.w500),
          )
        ],
      ),
    );
  }

  Widget _bottom(BuildContext context, ActivityState state) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 16.w),
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(color: const Color.fromRGBO(88, 88, 88, 0.05), blurRadius: 8.w, offset: const Offset(0, -2))
          ],
          borderRadius: BorderRadius.only(topLeft: Radius.circular(20.w), topRight: Radius.circular(20.w))),
      child: GestureDetector(
        onTap: () {
          if (context
              .read<ActivityBloc>()
              .state
              .activities
              .firstWhere((element) => element.key == activity.key)
              .booked!) {
            showMaterialModalBottomSheet(
              backgroundColor: Colors.transparent,
              context: context,
              builder: (_) =>BlocProvider.value(
                value: BlocProvider.of<ActivityBloc>(context),
                child: ContentBottomSheetWidget(
                  title: 'Cancel reservation',
                  content: Padding(
                    padding: EdgeInsets.all(24.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Are you sure you want to cancel your reservation for this activity?',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: const BoringColors().secondaryTextColor, fontSize: 20.w),
                        ),
                        SizedBox(
                          height: 32.w,
                        ),
                        GestureDetector(
                          onTap: () {
                            context.read<ActivityBloc>().add((ActivityEvent.bookActivity(
                                activity: state.activities.firstWhere((element) => element.key == activity.key),
                                activities: state.activities)));
                            Navigator.pop(context);
                          },
                          child: Container(
                            width: double.infinity,
                            padding: EdgeInsets.all(16.w),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.w),
                              color: const BoringColors().deleteColor,
                            ),
                            child: Center(
                              child: Text(
                                'Cancel',
                                style: TextStyle(color: Colors.white, fontSize: 16.w, fontWeight: FontWeight.w600),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
            return;
          }
          context.read<ActivityBloc>().add((ActivityEvent.bookActivity(
              activity: state.activities.firstWhere((element) => element.key == activity.key),
              activities: state.activities)));
        },
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.all(16.w),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.w),
            color: context
                    .read<ActivityBloc>()
                    .state
                    .activities
                    .firstWhere((element) => element.key == activity.key)
                    .booked!
                ? const BoringColors().deleteColor
                : const BoringColors().saveColor,
          ),
          child: Center(
            child: Text(
              context.read<ActivityBloc>().state.activities.firstWhere((element) => element.key == activity.key).booked!
                  ? 'Cancel'
                  : 'Book now',
              style: TextStyle(color: Colors.white, fontSize: 16.w, fontWeight: FontWeight.w600),
            ),
          ),
        ),
      ),
    );
  }
}
