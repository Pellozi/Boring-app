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
        getActivities: () async {
          emit(state.copyWith(activities: [], isLoading: true));
          emit(state.copyWith(activities: await getActivities(), isLoading: false));
        },
        getActivitiesByType: (String activityType) async {
          emit(state.copyWith(activities: [], isLoading: true));
          emit(state.copyWith(
              activities: await getActivitiesByType(activityType), isLoading: false, activityTypeFilter: activityType));
        },
        getActivitiesByPrice: (String minValue, String maxValue) async {
          emit(state.copyWith(activities: [], isLoading: true));
          emit(state.copyWith(
              activities: await getActivitiesByPrice(minValue, maxValue), isLoading: false, activityTypeFilter: ''));
        },
        getActivitiesByParticipants: (String participants) async {
          emit(state.copyWith(activities: [], isLoading: true));
          emit(state.copyWith(
              activities: await getActivitiesByParticipants(participants), isLoading: false, activityTypeFilter: ''));
        },
        likeActivity: (
          List<Activity> activities,
          Activity activity,
        ) {
          emit(state.copyWith(activities: likeActivity(activities, activity)));
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
          description:
              'Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took',
          locality: 'High Tech Campus Eindhoven, High Tech Campus, Eindhoven');
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
          description:
              'Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took',
          locality: 'High Tech Campus Eindhoven, High Tech Campus, Eindhoven');
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
          description:
              'Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took',
          locality: 'High Tech Campus Eindhoven, High Tech Campus, Eindhoven');
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
          description:
              'Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took',
          locality: 'High Tech Campus Eindhoven, High Tech Campus, Eindhoven');
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
        var newActivity = activities[index].copyWith(
            liked: activity.liked == false ? true : false,
            totalLikes: activity.liked == false ? activity.totalLikes! + 1 : activity.totalLikes! - 1);
        newActivities.add(newActivity);
        continue;
      }
      newActivities.add(activities[index]);
    }
    return newActivities;
  }
}
