import 'package:boring_app/features/activity/bloc/activity_bloc.dart';
import 'package:boring_app/features/activity/model/activity_model.dart';

import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ActivityState', () {
    ActivityState activityStateMock() {
      return const ActivityState(
          isLoading: false,
          activities: [
            Activity(
                activity: 'social activity',
                key: '1',
                accessibility: 1.0,
                participants: 1,
                price: 0.5,
                type: 'social',
                totalLikes: 1,
                liked: false,
                booked: false,
                description:
                    'Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took',
                locality: 'High Tech Campus Eindhoven'),
          ],
          activityTypeFilter: 'social');
    }

    test('test for when the loading state changes',
        () => expect(activityStateMock(), isNot(activityStateMock().copyWith(isLoading: true))));

    test('test for when the filter state changes',
        () => expect(activityStateMock(), isNot(activityStateMock().copyWith(activityTypeFilter: 'recreation'))));

    test('Test for when the list state changes', () {
      expect(
          activityStateMock(),
          isNot(activityStateMock().copyWith(activities: [
            const Activity(
                activity: 'social activity',
                key: '1',
                accessibility: 1.0,
                participants: 1,
                price: 0.5,
                type: 'social',
                totalLikes: 1,
                liked: true,
                booked: true,
                description:
                    'Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took',
                locality: 'High Tech Campus Eindhoven'),
          ])));
    });
  });
}
