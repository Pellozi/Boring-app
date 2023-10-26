import 'package:boring_app/features/activity/ui/components/tab_card.dart';
import 'package:boring_app/features/activity/ui/components/tabs_loading.dart';
import 'package:boring_app/themes/boring_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

import '../../../../components/content_bottom_shet.dart';
import '../../bloc/activity_bloc.dart';
import '../../utils/converters.dart';

class HeaderListActivities extends StatefulWidget {
  final String activityTypeFilterSelected;

  const HeaderListActivities({
    required this.activityTypeFilterSelected,
    Key? key,
  }) : super(key: key);

  @override
  State<HeaderListActivities> createState() => _HeaderListActivitiesState();
}

class _HeaderListActivitiesState extends State<HeaderListActivities> {
  String activityTypeSelected = '';
  TextEditingController participantsFilter = TextEditingController();
  RangeValues priceRange = const RangeValues(0.0, 1.0);
  int selectedFilter = 0;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: const BoringColors().mainColor,
      elevation: 0,
      pinned: true,
      toolbarHeight: 88.w,
      flexibleSpace: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 24.w, right: 24.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Local Activities',
                        style: TextStyle(color: Colors.white, fontSize: 12.w, fontWeight: FontWeight.w400)),
                    Text('What to do?',
                        style: TextStyle(color: Colors.white, fontSize: 24.w, fontWeight: FontWeight.w600)),
                  ],
                ),
                IconButton(
                  icon: Icon(
                    Icons.filter_alt_outlined,
                    size: 24.w,
                  ),
                  color: Colors.white,
                  onPressed: () {
                    showMaterialModalBottomSheet(
                        backgroundColor: Colors.transparent,
                        context: context,
                        builder: (_) => BlocProvider.value(
                              value: BlocProvider.of<ActivityBloc>(context),
                              child: StatefulBuilder(builder: (contextStatefulBuilder, StateSetter setter) {
                                return ContentBottomSheetWidget(
                                  title: "Filters",
                                  content: Padding(
                                    padding: EdgeInsets.all(16.w),
                                    child: Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            GestureDetector(
                                              onTap: () {
                                                setter(() {
                                                  setState(() {
                                                    selectedFilter = 1;
                                                  });
                                                });
                                              },
                                              child: Container(
                                                width: 128.w,
                                                padding: EdgeInsets.all(8.w),
                                                decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.circular(20.w),
                                                    color: selectedFilter == 1
                                                        ? const BoringColors().mainColor
                                                        : Colors.white,
                                                    border: Border.all(
                                                        width: 1.w,
                                                        color: selectedFilter == 1
                                                            ? Colors.white
                                                            : const BoringColors().mainColor)),
                                                child: Row(
                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                  children: [
                                                    Icon(
                                                      Icons.euro,
                                                      size: 24.w,
                                                      color: selectedFilter == 1
                                                          ? Colors.white
                                                          : const BoringColors().mainColor,
                                                    ),
                                                    SizedBox(
                                                      width: 8.w,
                                                    ),
                                                    Text(
                                                      'Price',
                                                      style: TextStyle(
                                                          color: selectedFilter == 1
                                                              ? Colors.white
                                                              : const BoringColors().mainColor),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 8.w,
                                            ),
                                            GestureDetector(
                                              onTap: () {
                                                setter(() {
                                                  setState(() {
                                                    selectedFilter = 2;
                                                  });
                                                });
                                              },
                                              child: Container(
                                                width: 128.w,
                                                padding: EdgeInsets.all(8.w),
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(20.w),
                                                  border: Border.all(
                                                      width: 1.w,
                                                      color: selectedFilter == 2
                                                          ? Colors.white
                                                          : const BoringColors().mainColor),
                                                  color: selectedFilter == 2
                                                      ? const BoringColors().mainColor
                                                      : Colors.white,
                                                ),
                                                child: Row(
                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                  children: [
                                                    Icon(
                                                      Icons.people_outline,
                                                      size: 24.w,
                                                      color: selectedFilter == 2
                                                          ? Colors.white
                                                          : const BoringColors().mainColor,
                                                    ),
                                                    SizedBox(
                                                      width: 8.w,
                                                    ),
                                                    Text(
                                                      'Participants',
                                                      style: TextStyle(
                                                          color: selectedFilter == 2
                                                              ? Colors.white
                                                              : const BoringColors().mainColor),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 24.w,
                                        ),
                                        if (selectedFilter == 1)
                                          Column(
                                            children: [
                                              Center(
                                                child: RangeSlider(
                                                    values: priceRange,
                                                    divisions: 10,
                                                    activeColor: const BoringColors().mainColor,
                                                    inactiveColor: const BoringColors().mainColor.withOpacity(0.2),
                                                    labels: RangeLabels(
                                                        converterDoubleValue(priceRange.start).toString(),
                                                        converterDoubleValue(priceRange.end).toString()),
                                                    onChanged: (newRangePrice) {
                                                      setter(() {
                                                        setState(() {
                                                          priceRange = newRangePrice;
                                                        });
                                                      });
                                                    }),
                                              ),
                                              SizedBox(
                                                height: 16.w,
                                              ),
                                              Padding(
                                                padding: EdgeInsets.symmetric(horizontal: 16.w),
                                                child: Row(
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  children: [
                                                    Text('Minimum price: ${converterDoubleValue(priceRange.start)}',
                                                        style: TextStyle(
                                                            fontSize: 14.w,
                                                            color: const BoringColors().secondaryTextColor)),
                                                    Text('Maximum price: ${converterDoubleValue(priceRange.end)}',
                                                        style: TextStyle(
                                                            fontSize: 14.w,
                                                            color: const BoringColors().secondaryTextColor)),
                                                  ],
                                                ),
                                              )
                                            ],
                                          ),
                                        if (selectedFilter == 2)
                                          Column(
                                            children: [
                                              TextFormField(
                                                controller: participantsFilter,
                                                keyboardType: TextInputType.number,
                                                decoration: InputDecoration(
                                                  filled: false,
                                                  prefixIcon:
                                                      Icon(Icons.people_outline, color: const BoringColors().mainColor),
                                                  hintText: 'Number of participants',
                                                  floatingLabelBehavior: FloatingLabelBehavior.auto,
                                                  border: OutlineInputBorder(
                                                      borderRadius: BorderRadius.circular(15.w),
                                                      borderSide: BorderSide(
                                                          width: 1.w, color: const BoringColors().mainColor)),
                                                  focusedBorder: OutlineInputBorder(
                                                      borderRadius: BorderRadius.circular(15.w),
                                                      borderSide: BorderSide(
                                                          width: 1.w, color: const BoringColors().mainColor)),
                                                  enabledBorder: OutlineInputBorder(
                                                      borderRadius: BorderRadius.circular(15.w),
                                                      borderSide: BorderSide(
                                                          width: 1.w, color: const BoringColors().mainColor)),
                                                  contentPadding: EdgeInsets.all(16.w),
                                                  errorBorder: OutlineInputBorder(
                                                      borderRadius: BorderRadius.circular(15.w),
                                                      borderSide: BorderSide(
                                                          width: 1.w, color: const BoringColors().mainColor)),
                                                  focusedErrorBorder: OutlineInputBorder(
                                                      borderRadius: BorderRadius.circular(15.w),
                                                      borderSide: BorderSide(
                                                          width: 1.w, color: const BoringColors().mainColor)),
                                                  disabledBorder: OutlineInputBorder(
                                                      borderRadius: BorderRadius.circular(15.w),
                                                      borderSide: BorderSide(
                                                          width: 1.w, color: const BoringColors().mainColor)),
                                                  errorStyle: const TextStyle(height: 0),
                                                ),
                                                cursorColor: const BoringColors().mainColor,
                                              ),
                                            ],
                                          ),
                                        SizedBox(
                                          height: 24.w,
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            if (selectedFilter == 1) {
                                              BlocProvider.of<ActivityBloc>(context).add(
                                                  (ActivityEvent.getActivitiesByPrice(
                                                      minValue: priceRange.start.toString(),
                                                      maxValue: priceRange.end.toString())));
                                            }
                                            if (selectedFilter == 2) {
                                              BlocProvider.of<ActivityBloc>(context)
                                                  .add((ActivityEvent.getActivitiesByParticipants(
                                                participants: participantsFilter.text.toString(),
                                              )));
                                            }
                                            Navigator.pop(context);
                                          },
                                          child: Container(
                                            width: double.infinity,
                                            padding: EdgeInsets.all(16.w),
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(15.w),
                                              color: const BoringColors().saveColor,
                                            ),
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: [
                                                Icon(
                                                  Icons.filter_alt_outlined,
                                                  size: 24.w,
                                                  color: Colors.white,
                                                ),
                                                SizedBox(
                                                  width: 8.w,
                                                ),
                                                Text(
                                                  'Apply filter',
                                                  style: TextStyle(
                                                      color: Colors.white, fontSize: 16.w, fontWeight: FontWeight.w600),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              }),
                            ));
                  },
                )
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(top: 16.w),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child:BlocProvider.of<ActivityBloc>(context).state.isLoading ? const TabsLoading() :Row(
                children: [
                  TabCard('education', widget.activityTypeFilterSelected),
                  TabCard('recreational', widget.activityTypeFilterSelected),
                  TabCard('social', widget.activityTypeFilterSelected),
                  TabCard('diy', widget.activityTypeFilterSelected),
                  TabCard('charity', widget.activityTypeFilterSelected),
                  TabCard('cooking', widget.activityTypeFilterSelected),
                  TabCard('relaxation', widget.activityTypeFilterSelected),
                  TabCard('music', widget.activityTypeFilterSelected),
                  TabCard('busywork', widget.activityTypeFilterSelected),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
