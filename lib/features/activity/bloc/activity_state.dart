part of 'activity_bloc.dart';

@freezed
abstract class ActivityState with _$ActivityState {
  const factory ActivityState(
      {required bool isLoading,
        required String activityTypeFilter,
        required List<Activity> activities}) =_ActivityState;
}
