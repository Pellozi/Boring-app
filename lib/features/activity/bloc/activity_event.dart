part of 'activity_bloc.dart';

@freezed
abstract class ActivityEvent with _$ActivityEvent {
  const factory ActivityEvent.getActivities() = _GetActivities;
  const factory ActivityEvent.getActivitiesByType({required String type}) = _GetActivitiesByType;
  const factory ActivityEvent.getActivitiesByPrice({required String minValue, required String maxValue,}) = _GetActivitiesByPrice;
  const factory ActivityEvent.getActivitiesByParticipants({required String participants}) = _GetActivitiesByParticipants;
  const factory ActivityEvent.likeActivity({required List<Activity> activities, required Activity activity}) =
      _LikeActivity;
  const factory ActivityEvent.bookActivity({required List<Activity> activities, required Activity activity}) =
  _BookActivity;
}
