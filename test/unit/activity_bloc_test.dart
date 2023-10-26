import 'package:bloc_test/bloc_test.dart';
import 'package:boring_app/features/activity/bloc/activity_bloc.dart';
import 'package:boring_app/features/activity/model/activity_model.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ActivityBloc', () {
    test('emits the initial state', () {
      final bloc = ActivityBloc();
      expect(bloc.state, const ActivityState(isLoading: false, activityTypeFilter: '', activities: []));
      bloc.close();
    });

    blocTest<ActivityBloc, ActivityState>(
      'emits the expected states for get activities',
      build: () => ActivityBloc(),
      act: (bloc) => bloc.add(const ActivityEvent.getActivities()),
      expect: () => const [],
    );

    blocTest<ActivityBloc, ActivityState>(
      'emits the expected state after like an activity',
      build: () => ActivityBloc(),
      act: (bloc) => bloc.add(const ActivityEvent.likeActivity(
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
          activity: Activity(
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
              locality: 'High Tech Campus Eindhoven'))),
      expect: () => const [
        ActivityState(activities: [
          Activity(
              activity: 'social activity',
              key: '1',
              accessibility: 1.0,
              participants: 1,
              price: 0.5,
              type: 'social',
              totalLikes: 2,
              liked: true,
              booked: false,
              description:
                  'Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took',
              locality: 'High Tech Campus Eindhoven')
        ], activityTypeFilter: '', isLoading: false)
      ],
    );
  });
  blocTest<ActivityBloc, ActivityState>(
    'emits the expected state after book an activity',
    build: () => ActivityBloc(),
    act: (bloc) => bloc.add(const ActivityEvent.bookActivity(
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
        activity: Activity(
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
            locality: 'High Tech Campus Eindhoven'))),
    expect: () => const [
      ActivityState(activities: [
        Activity(
            activity: 'social activity',
            key: '1',
            accessibility: 1.0,
            participants: 1,
            price: 0.5,
            type: 'social',
            totalLikes: 1,
            liked: false,
            booked: true,
            description:
                'Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took',
            locality: 'High Tech Campus Eindhoven')
      ], activityTypeFilter: '', isLoading: false)
    ],
  );
}
