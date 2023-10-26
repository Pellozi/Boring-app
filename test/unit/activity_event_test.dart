import 'package:boring_app/features/activity/bloc/activity_bloc.dart';
import 'package:boring_app/features/activity/model/activity_model.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ActivityEvent', () {
    test(
        'Get Activities',
        () => () {
              expect(ActivityEvent.getActivities, ActivityEvent.getActivities);
            });
    test(
        'Get Activities By Type',
        () => () {
              expect(ActivityEvent.getActivitiesByType, const ActivityEvent.getActivitiesByType(type: 'social'));
            });
    test(
        'Get Activities By Price',
        () => () {
              expect(ActivityEvent.getActivitiesByPrice,
                  const ActivityEvent.getActivitiesByPrice(maxValue: '1.0', minValue: '0.0'));
            });
    test(
        'Get Activities By Participants',
        () => () {
              expect(
                ActivityEvent.getActivitiesByParticipants,
                const ActivityEvent.getActivitiesByParticipants(participants: '1'),
              );
            });
    test(
        'Like Activity',
        () => () {
              expect(
                ActivityEvent.likeActivity,
                const ActivityEvent.likeActivity(activities: [], activity: Activity()),
              );
            });
    test(
        'Book Activity',
        () => () {
              expect(
                  ActivityEvent.bookActivity, const ActivityEvent.bookActivity(activities: [], activity: Activity()));
            });
  });
}
