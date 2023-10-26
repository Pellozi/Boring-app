import 'dart:async';
import 'dart:math';
import 'package:bloc/bloc.dart';
import 'package:boring_app/features/activity/repository/activity_repository.dart';
import 'package:http/http.dart' as http;
import 'package:freezed_annotation/freezed_annotation.dart';

import '../model/activity_model.dart';

part 'activity_state.dart';

part 'activity_event.dart';

part 'activity_bloc.freezed.dart';

class ActivityBloc extends Bloc<ActivityEvent, ActivityState> {
  ActivityBloc() : super(const ActivityState(isLoading: false, activities: [], activityTypeFilter: '')) {
    on<ActivityEvent>((event, emit) async {
      await event.when(
        loading: (loading){
          emit(state.copyWith(isLoading: loading));
        },
        setActivityFilter: (filter){
          emit(state.copyWith(activityTypeFilter: filter));
        },
        getActivities: () async {
          emit(state.copyWith(activities: await getActivities(), isLoading: false));
        },
        getActivitiesByType: (String activityType) async {
          emit(state.copyWith(
            activities: await getActivitiesByType(activityType),
            isLoading: false,
          ));
        },
        getActivitiesByPrice: (String minValue, String maxValue) async {
          emit(state.copyWith(
              activities: await getActivitiesByPrice(minValue, maxValue), isLoading: false,));
        },
        getActivitiesByParticipants: (String participants) async {
          emit(state.copyWith(
              activities: await getActivitiesByParticipants(participants), isLoading: false,));
        },
        likeActivity: (
          List<Activity> activities,
          Activity activity,
        ) {
          emit(state.copyWith(activities: likeActivity(activities, activity)));
        },
        bookActivity: (
          List<Activity> activities,
          Activity activity,
        ) {
          emit(state.copyWith(activities: bookActivity(activities, activity)));
        },
      );
    });
  }

  Future<List<Activity>> getActivities() async {
    Random random = Random();
    List<Activity> activities = [];
    for (var i = 0; i < 5; i++) {
      var response = await ActivityRepository.getActivities();
      var activity = response.copyWith(
          totalLikes: random.nextInt(10) + 1,
          liked: false,
          booked: false,
          description:
              'Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took',
          locality: 'High Tech Campus Eindhoven');
      activities.add(activity);
    }
    return activities;
  }

  Future<List<Activity>> getActivitiesByType(String activityType) async {
    Random random = Random();
    List<Activity> activities = [];
    for (var i = 0; i < 5; i++) {
      var response = await ActivityRepository.getActivitiesByType(activityType: activityType);
      var activity = response.copyWith(
          totalLikes: random.nextInt(10) + 1,
          liked: false,
          booked: false,
          description:
              'Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took',
          locality: 'High Tech Campus Eindhoven');
      activities.add(activity);
    }
    return activities;
  }

  Future<List<Activity>> getActivitiesByPrice(String minValue, String maxValue) async {
    Random random = Random();
    List<Activity> activities = [];
    for (var i = 0; i < 5; i++) {
      var response = await ActivityRepository.getActivitiesByPrice(minValue: minValue, maxValue: maxValue);
      var activity = response.copyWith(
          totalLikes: random.nextInt(10) + 1,
          liked: false,
          booked: false,
          description:
              'Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took',
          locality: 'High Tech Campus Eindhoven');
      activities.add(activity);
    }
    return activities;
  }

  Future<List<Activity>> getActivitiesByParticipants(String participants) async {
    Random random = Random();
    List<Activity> activities = [];
    for (var i = 0; i < 5; i++) {
      var response = await ActivityRepository.getActivitiesByParticipants(participants: participants);
      var activity = response.copyWith(
          totalLikes: random.nextInt(10) + 1,
          liked: false,
          booked: false,
          description:
              'Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took',
          locality: 'High Tech Campus Eindhoven');
      activities.add(activity);
    }
    return activities;
  }

  List<Activity> likeActivity(
    List<Activity> activities,
    Activity activity,
  ) {
    List<Activity> newActivities = [];
    for (var index = 0; index < activities.length; index++) {
      if (activities[index].key == activity.key) {
        var newActivity = activity.copyWith(
            liked: activities[index].liked == false ? true : false,
            totalLikes: activities[index].liked == false
                ? activities[index].totalLikes! + 1
                : activities[index].totalLikes! - 1);
        newActivities.add(newActivity);
        continue;
      }
      newActivities.add(activities[index]);
    }
    return newActivities;
  }

  List<Activity> bookActivity(
    List<Activity> activities,
    Activity activity,
  ) {
    List<Activity> newActivities = [];
    for (var index = 0; index < activities.length; index++) {
      if (activities[index].key == activity.key) {
        var newActivity = activity.copyWith(booked: activities[index].booked == false ? true : false);
        newActivities.add(newActivity);
        continue;
      }
      newActivities.add(activities[index]);
    }
    return newActivities;
  }
}
