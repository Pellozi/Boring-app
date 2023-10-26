// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'activity_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ActivityState {
  bool get isLoading => throw _privateConstructorUsedError;
  String get activityTypeFilter => throw _privateConstructorUsedError;
  List<Activity> get activities => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ActivityStateCopyWith<ActivityState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActivityStateCopyWith<$Res> {
  factory $ActivityStateCopyWith(
          ActivityState value, $Res Function(ActivityState) then) =
      _$ActivityStateCopyWithImpl<$Res, ActivityState>;
  @useResult
  $Res call(
      {bool isLoading, String activityTypeFilter, List<Activity> activities});
}

/// @nodoc
class _$ActivityStateCopyWithImpl<$Res, $Val extends ActivityState>
    implements $ActivityStateCopyWith<$Res> {
  _$ActivityStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? activityTypeFilter = null,
    Object? activities = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      activityTypeFilter: null == activityTypeFilter
          ? _value.activityTypeFilter
          : activityTypeFilter // ignore: cast_nullable_to_non_nullable
              as String,
      activities: null == activities
          ? _value.activities
          : activities // ignore: cast_nullable_to_non_nullable
              as List<Activity>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ActivityStateImplCopyWith<$Res>
    implements $ActivityStateCopyWith<$Res> {
  factory _$$ActivityStateImplCopyWith(
          _$ActivityStateImpl value, $Res Function(_$ActivityStateImpl) then) =
      __$$ActivityStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading, String activityTypeFilter, List<Activity> activities});
}

/// @nodoc
class __$$ActivityStateImplCopyWithImpl<$Res>
    extends _$ActivityStateCopyWithImpl<$Res, _$ActivityStateImpl>
    implements _$$ActivityStateImplCopyWith<$Res> {
  __$$ActivityStateImplCopyWithImpl(
      _$ActivityStateImpl _value, $Res Function(_$ActivityStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? activityTypeFilter = null,
    Object? activities = null,
  }) {
    return _then(_$ActivityStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      activityTypeFilter: null == activityTypeFilter
          ? _value.activityTypeFilter
          : activityTypeFilter // ignore: cast_nullable_to_non_nullable
              as String,
      activities: null == activities
          ? _value._activities
          : activities // ignore: cast_nullable_to_non_nullable
              as List<Activity>,
    ));
  }
}

/// @nodoc

class _$ActivityStateImpl implements _ActivityState {
  const _$ActivityStateImpl(
      {required this.isLoading,
      required this.activityTypeFilter,
      required final List<Activity> activities})
      : _activities = activities;

  @override
  final bool isLoading;
  @override
  final String activityTypeFilter;
  final List<Activity> _activities;
  @override
  List<Activity> get activities {
    if (_activities is EqualUnmodifiableListView) return _activities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_activities);
  }

  @override
  String toString() {
    return 'ActivityState(isLoading: $isLoading, activityTypeFilter: $activityTypeFilter, activities: $activities)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ActivityStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.activityTypeFilter, activityTypeFilter) ||
                other.activityTypeFilter == activityTypeFilter) &&
            const DeepCollectionEquality()
                .equals(other._activities, _activities));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, activityTypeFilter,
      const DeepCollectionEquality().hash(_activities));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ActivityStateImplCopyWith<_$ActivityStateImpl> get copyWith =>
      __$$ActivityStateImplCopyWithImpl<_$ActivityStateImpl>(this, _$identity);
}

abstract class _ActivityState implements ActivityState {
  const factory _ActivityState(
      {required final bool isLoading,
      required final String activityTypeFilter,
      required final List<Activity> activities}) = _$ActivityStateImpl;

  @override
  bool get isLoading;
  @override
  String get activityTypeFilter;
  @override
  List<Activity> get activities;
  @override
  @JsonKey(ignore: true)
  _$$ActivityStateImplCopyWith<_$ActivityStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ActivityEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool loading) loading,
    required TResult Function(String filter) setActivityFilter,
    required TResult Function() getActivities,
    required TResult Function(String type) getActivitiesByType,
    required TResult Function(String minValue, String maxValue)
        getActivitiesByPrice,
    required TResult Function(String participants) getActivitiesByParticipants,
    required TResult Function(List<Activity> activities, Activity activity)
        likeActivity,
    required TResult Function(List<Activity> activities, Activity activity)
        bookActivity,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool loading)? loading,
    TResult? Function(String filter)? setActivityFilter,
    TResult? Function()? getActivities,
    TResult? Function(String type)? getActivitiesByType,
    TResult? Function(String minValue, String maxValue)? getActivitiesByPrice,
    TResult? Function(String participants)? getActivitiesByParticipants,
    TResult? Function(List<Activity> activities, Activity activity)?
        likeActivity,
    TResult? Function(List<Activity> activities, Activity activity)?
        bookActivity,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool loading)? loading,
    TResult Function(String filter)? setActivityFilter,
    TResult Function()? getActivities,
    TResult Function(String type)? getActivitiesByType,
    TResult Function(String minValue, String maxValue)? getActivitiesByPrice,
    TResult Function(String participants)? getActivitiesByParticipants,
    TResult Function(List<Activity> activities, Activity activity)?
        likeActivity,
    TResult Function(List<Activity> activities, Activity activity)?
        bookActivity,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_SetActivityFilter value) setActivityFilter,
    required TResult Function(_GetActivities value) getActivities,
    required TResult Function(_GetActivitiesByType value) getActivitiesByType,
    required TResult Function(_GetActivitiesByPrice value) getActivitiesByPrice,
    required TResult Function(_GetActivitiesByParticipants value)
        getActivitiesByParticipants,
    required TResult Function(_LikeActivity value) likeActivity,
    required TResult Function(_BookActivity value) bookActivity,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SetActivityFilter value)? setActivityFilter,
    TResult? Function(_GetActivities value)? getActivities,
    TResult? Function(_GetActivitiesByType value)? getActivitiesByType,
    TResult? Function(_GetActivitiesByPrice value)? getActivitiesByPrice,
    TResult? Function(_GetActivitiesByParticipants value)?
        getActivitiesByParticipants,
    TResult? Function(_LikeActivity value)? likeActivity,
    TResult? Function(_BookActivity value)? bookActivity,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_SetActivityFilter value)? setActivityFilter,
    TResult Function(_GetActivities value)? getActivities,
    TResult Function(_GetActivitiesByType value)? getActivitiesByType,
    TResult Function(_GetActivitiesByPrice value)? getActivitiesByPrice,
    TResult Function(_GetActivitiesByParticipants value)?
        getActivitiesByParticipants,
    TResult Function(_LikeActivity value)? likeActivity,
    TResult Function(_BookActivity value)? bookActivity,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActivityEventCopyWith<$Res> {
  factory $ActivityEventCopyWith(
          ActivityEvent value, $Res Function(ActivityEvent) then) =
      _$ActivityEventCopyWithImpl<$Res, ActivityEvent>;
}

/// @nodoc
class _$ActivityEventCopyWithImpl<$Res, $Val extends ActivityEvent>
    implements $ActivityEventCopyWith<$Res> {
  _$ActivityEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool loading});
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$ActivityEventCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
  }) {
    return _then(_$LoadingImpl(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl({required this.loading});

  @override
  final bool loading;

  @override
  String toString() {
    return 'ActivityEvent.loading(loading: $loading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingImpl &&
            (identical(other.loading, loading) || other.loading == loading));
  }

  @override
  int get hashCode => Object.hash(runtimeType, loading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadingImplCopyWith<_$LoadingImpl> get copyWith =>
      __$$LoadingImplCopyWithImpl<_$LoadingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool loading) loading,
    required TResult Function(String filter) setActivityFilter,
    required TResult Function() getActivities,
    required TResult Function(String type) getActivitiesByType,
    required TResult Function(String minValue, String maxValue)
        getActivitiesByPrice,
    required TResult Function(String participants) getActivitiesByParticipants,
    required TResult Function(List<Activity> activities, Activity activity)
        likeActivity,
    required TResult Function(List<Activity> activities, Activity activity)
        bookActivity,
  }) {
    return loading(this.loading);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool loading)? loading,
    TResult? Function(String filter)? setActivityFilter,
    TResult? Function()? getActivities,
    TResult? Function(String type)? getActivitiesByType,
    TResult? Function(String minValue, String maxValue)? getActivitiesByPrice,
    TResult? Function(String participants)? getActivitiesByParticipants,
    TResult? Function(List<Activity> activities, Activity activity)?
        likeActivity,
    TResult? Function(List<Activity> activities, Activity activity)?
        bookActivity,
  }) {
    return loading?.call(this.loading);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool loading)? loading,
    TResult Function(String filter)? setActivityFilter,
    TResult Function()? getActivities,
    TResult Function(String type)? getActivitiesByType,
    TResult Function(String minValue, String maxValue)? getActivitiesByPrice,
    TResult Function(String participants)? getActivitiesByParticipants,
    TResult Function(List<Activity> activities, Activity activity)?
        likeActivity,
    TResult Function(List<Activity> activities, Activity activity)?
        bookActivity,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this.loading);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_SetActivityFilter value) setActivityFilter,
    required TResult Function(_GetActivities value) getActivities,
    required TResult Function(_GetActivitiesByType value) getActivitiesByType,
    required TResult Function(_GetActivitiesByPrice value) getActivitiesByPrice,
    required TResult Function(_GetActivitiesByParticipants value)
        getActivitiesByParticipants,
    required TResult Function(_LikeActivity value) likeActivity,
    required TResult Function(_BookActivity value) bookActivity,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SetActivityFilter value)? setActivityFilter,
    TResult? Function(_GetActivities value)? getActivities,
    TResult? Function(_GetActivitiesByType value)? getActivitiesByType,
    TResult? Function(_GetActivitiesByPrice value)? getActivitiesByPrice,
    TResult? Function(_GetActivitiesByParticipants value)?
        getActivitiesByParticipants,
    TResult? Function(_LikeActivity value)? likeActivity,
    TResult? Function(_BookActivity value)? bookActivity,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_SetActivityFilter value)? setActivityFilter,
    TResult Function(_GetActivities value)? getActivities,
    TResult Function(_GetActivitiesByType value)? getActivitiesByType,
    TResult Function(_GetActivitiesByPrice value)? getActivitiesByPrice,
    TResult Function(_GetActivitiesByParticipants value)?
        getActivitiesByParticipants,
    TResult Function(_LikeActivity value)? likeActivity,
    TResult Function(_BookActivity value)? bookActivity,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements ActivityEvent {
  const factory _Loading({required final bool loading}) = _$LoadingImpl;

  bool get loading;
  @JsonKey(ignore: true)
  _$$LoadingImplCopyWith<_$LoadingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SetActivityFilterImplCopyWith<$Res> {
  factory _$$SetActivityFilterImplCopyWith(_$SetActivityFilterImpl value,
          $Res Function(_$SetActivityFilterImpl) then) =
      __$$SetActivityFilterImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String filter});
}

/// @nodoc
class __$$SetActivityFilterImplCopyWithImpl<$Res>
    extends _$ActivityEventCopyWithImpl<$Res, _$SetActivityFilterImpl>
    implements _$$SetActivityFilterImplCopyWith<$Res> {
  __$$SetActivityFilterImplCopyWithImpl(_$SetActivityFilterImpl _value,
      $Res Function(_$SetActivityFilterImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filter = null,
  }) {
    return _then(_$SetActivityFilterImpl(
      filter: null == filter
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SetActivityFilterImpl implements _SetActivityFilter {
  const _$SetActivityFilterImpl({required this.filter});

  @override
  final String filter;

  @override
  String toString() {
    return 'ActivityEvent.setActivityFilter(filter: $filter)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetActivityFilterImpl &&
            (identical(other.filter, filter) || other.filter == filter));
  }

  @override
  int get hashCode => Object.hash(runtimeType, filter);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SetActivityFilterImplCopyWith<_$SetActivityFilterImpl> get copyWith =>
      __$$SetActivityFilterImplCopyWithImpl<_$SetActivityFilterImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool loading) loading,
    required TResult Function(String filter) setActivityFilter,
    required TResult Function() getActivities,
    required TResult Function(String type) getActivitiesByType,
    required TResult Function(String minValue, String maxValue)
        getActivitiesByPrice,
    required TResult Function(String participants) getActivitiesByParticipants,
    required TResult Function(List<Activity> activities, Activity activity)
        likeActivity,
    required TResult Function(List<Activity> activities, Activity activity)
        bookActivity,
  }) {
    return setActivityFilter(filter);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool loading)? loading,
    TResult? Function(String filter)? setActivityFilter,
    TResult? Function()? getActivities,
    TResult? Function(String type)? getActivitiesByType,
    TResult? Function(String minValue, String maxValue)? getActivitiesByPrice,
    TResult? Function(String participants)? getActivitiesByParticipants,
    TResult? Function(List<Activity> activities, Activity activity)?
        likeActivity,
    TResult? Function(List<Activity> activities, Activity activity)?
        bookActivity,
  }) {
    return setActivityFilter?.call(filter);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool loading)? loading,
    TResult Function(String filter)? setActivityFilter,
    TResult Function()? getActivities,
    TResult Function(String type)? getActivitiesByType,
    TResult Function(String minValue, String maxValue)? getActivitiesByPrice,
    TResult Function(String participants)? getActivitiesByParticipants,
    TResult Function(List<Activity> activities, Activity activity)?
        likeActivity,
    TResult Function(List<Activity> activities, Activity activity)?
        bookActivity,
    required TResult orElse(),
  }) {
    if (setActivityFilter != null) {
      return setActivityFilter(filter);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_SetActivityFilter value) setActivityFilter,
    required TResult Function(_GetActivities value) getActivities,
    required TResult Function(_GetActivitiesByType value) getActivitiesByType,
    required TResult Function(_GetActivitiesByPrice value) getActivitiesByPrice,
    required TResult Function(_GetActivitiesByParticipants value)
        getActivitiesByParticipants,
    required TResult Function(_LikeActivity value) likeActivity,
    required TResult Function(_BookActivity value) bookActivity,
  }) {
    return setActivityFilter(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SetActivityFilter value)? setActivityFilter,
    TResult? Function(_GetActivities value)? getActivities,
    TResult? Function(_GetActivitiesByType value)? getActivitiesByType,
    TResult? Function(_GetActivitiesByPrice value)? getActivitiesByPrice,
    TResult? Function(_GetActivitiesByParticipants value)?
        getActivitiesByParticipants,
    TResult? Function(_LikeActivity value)? likeActivity,
    TResult? Function(_BookActivity value)? bookActivity,
  }) {
    return setActivityFilter?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_SetActivityFilter value)? setActivityFilter,
    TResult Function(_GetActivities value)? getActivities,
    TResult Function(_GetActivitiesByType value)? getActivitiesByType,
    TResult Function(_GetActivitiesByPrice value)? getActivitiesByPrice,
    TResult Function(_GetActivitiesByParticipants value)?
        getActivitiesByParticipants,
    TResult Function(_LikeActivity value)? likeActivity,
    TResult Function(_BookActivity value)? bookActivity,
    required TResult orElse(),
  }) {
    if (setActivityFilter != null) {
      return setActivityFilter(this);
    }
    return orElse();
  }
}

abstract class _SetActivityFilter implements ActivityEvent {
  const factory _SetActivityFilter({required final String filter}) =
      _$SetActivityFilterImpl;

  String get filter;
  @JsonKey(ignore: true)
  _$$SetActivityFilterImplCopyWith<_$SetActivityFilterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetActivitiesImplCopyWith<$Res> {
  factory _$$GetActivitiesImplCopyWith(
          _$GetActivitiesImpl value, $Res Function(_$GetActivitiesImpl) then) =
      __$$GetActivitiesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetActivitiesImplCopyWithImpl<$Res>
    extends _$ActivityEventCopyWithImpl<$Res, _$GetActivitiesImpl>
    implements _$$GetActivitiesImplCopyWith<$Res> {
  __$$GetActivitiesImplCopyWithImpl(
      _$GetActivitiesImpl _value, $Res Function(_$GetActivitiesImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetActivitiesImpl implements _GetActivities {
  const _$GetActivitiesImpl();

  @override
  String toString() {
    return 'ActivityEvent.getActivities()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetActivitiesImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool loading) loading,
    required TResult Function(String filter) setActivityFilter,
    required TResult Function() getActivities,
    required TResult Function(String type) getActivitiesByType,
    required TResult Function(String minValue, String maxValue)
        getActivitiesByPrice,
    required TResult Function(String participants) getActivitiesByParticipants,
    required TResult Function(List<Activity> activities, Activity activity)
        likeActivity,
    required TResult Function(List<Activity> activities, Activity activity)
        bookActivity,
  }) {
    return getActivities();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool loading)? loading,
    TResult? Function(String filter)? setActivityFilter,
    TResult? Function()? getActivities,
    TResult? Function(String type)? getActivitiesByType,
    TResult? Function(String minValue, String maxValue)? getActivitiesByPrice,
    TResult? Function(String participants)? getActivitiesByParticipants,
    TResult? Function(List<Activity> activities, Activity activity)?
        likeActivity,
    TResult? Function(List<Activity> activities, Activity activity)?
        bookActivity,
  }) {
    return getActivities?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool loading)? loading,
    TResult Function(String filter)? setActivityFilter,
    TResult Function()? getActivities,
    TResult Function(String type)? getActivitiesByType,
    TResult Function(String minValue, String maxValue)? getActivitiesByPrice,
    TResult Function(String participants)? getActivitiesByParticipants,
    TResult Function(List<Activity> activities, Activity activity)?
        likeActivity,
    TResult Function(List<Activity> activities, Activity activity)?
        bookActivity,
    required TResult orElse(),
  }) {
    if (getActivities != null) {
      return getActivities();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_SetActivityFilter value) setActivityFilter,
    required TResult Function(_GetActivities value) getActivities,
    required TResult Function(_GetActivitiesByType value) getActivitiesByType,
    required TResult Function(_GetActivitiesByPrice value) getActivitiesByPrice,
    required TResult Function(_GetActivitiesByParticipants value)
        getActivitiesByParticipants,
    required TResult Function(_LikeActivity value) likeActivity,
    required TResult Function(_BookActivity value) bookActivity,
  }) {
    return getActivities(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SetActivityFilter value)? setActivityFilter,
    TResult? Function(_GetActivities value)? getActivities,
    TResult? Function(_GetActivitiesByType value)? getActivitiesByType,
    TResult? Function(_GetActivitiesByPrice value)? getActivitiesByPrice,
    TResult? Function(_GetActivitiesByParticipants value)?
        getActivitiesByParticipants,
    TResult? Function(_LikeActivity value)? likeActivity,
    TResult? Function(_BookActivity value)? bookActivity,
  }) {
    return getActivities?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_SetActivityFilter value)? setActivityFilter,
    TResult Function(_GetActivities value)? getActivities,
    TResult Function(_GetActivitiesByType value)? getActivitiesByType,
    TResult Function(_GetActivitiesByPrice value)? getActivitiesByPrice,
    TResult Function(_GetActivitiesByParticipants value)?
        getActivitiesByParticipants,
    TResult Function(_LikeActivity value)? likeActivity,
    TResult Function(_BookActivity value)? bookActivity,
    required TResult orElse(),
  }) {
    if (getActivities != null) {
      return getActivities(this);
    }
    return orElse();
  }
}

abstract class _GetActivities implements ActivityEvent {
  const factory _GetActivities() = _$GetActivitiesImpl;
}

/// @nodoc
abstract class _$$GetActivitiesByTypeImplCopyWith<$Res> {
  factory _$$GetActivitiesByTypeImplCopyWith(_$GetActivitiesByTypeImpl value,
          $Res Function(_$GetActivitiesByTypeImpl) then) =
      __$$GetActivitiesByTypeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String type});
}

/// @nodoc
class __$$GetActivitiesByTypeImplCopyWithImpl<$Res>
    extends _$ActivityEventCopyWithImpl<$Res, _$GetActivitiesByTypeImpl>
    implements _$$GetActivitiesByTypeImplCopyWith<$Res> {
  __$$GetActivitiesByTypeImplCopyWithImpl(_$GetActivitiesByTypeImpl _value,
      $Res Function(_$GetActivitiesByTypeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
  }) {
    return _then(_$GetActivitiesByTypeImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetActivitiesByTypeImpl implements _GetActivitiesByType {
  const _$GetActivitiesByTypeImpl({required this.type});

  @override
  final String type;

  @override
  String toString() {
    return 'ActivityEvent.getActivitiesByType(type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetActivitiesByTypeImpl &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetActivitiesByTypeImplCopyWith<_$GetActivitiesByTypeImpl> get copyWith =>
      __$$GetActivitiesByTypeImplCopyWithImpl<_$GetActivitiesByTypeImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool loading) loading,
    required TResult Function(String filter) setActivityFilter,
    required TResult Function() getActivities,
    required TResult Function(String type) getActivitiesByType,
    required TResult Function(String minValue, String maxValue)
        getActivitiesByPrice,
    required TResult Function(String participants) getActivitiesByParticipants,
    required TResult Function(List<Activity> activities, Activity activity)
        likeActivity,
    required TResult Function(List<Activity> activities, Activity activity)
        bookActivity,
  }) {
    return getActivitiesByType(type);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool loading)? loading,
    TResult? Function(String filter)? setActivityFilter,
    TResult? Function()? getActivities,
    TResult? Function(String type)? getActivitiesByType,
    TResult? Function(String minValue, String maxValue)? getActivitiesByPrice,
    TResult? Function(String participants)? getActivitiesByParticipants,
    TResult? Function(List<Activity> activities, Activity activity)?
        likeActivity,
    TResult? Function(List<Activity> activities, Activity activity)?
        bookActivity,
  }) {
    return getActivitiesByType?.call(type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool loading)? loading,
    TResult Function(String filter)? setActivityFilter,
    TResult Function()? getActivities,
    TResult Function(String type)? getActivitiesByType,
    TResult Function(String minValue, String maxValue)? getActivitiesByPrice,
    TResult Function(String participants)? getActivitiesByParticipants,
    TResult Function(List<Activity> activities, Activity activity)?
        likeActivity,
    TResult Function(List<Activity> activities, Activity activity)?
        bookActivity,
    required TResult orElse(),
  }) {
    if (getActivitiesByType != null) {
      return getActivitiesByType(type);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_SetActivityFilter value) setActivityFilter,
    required TResult Function(_GetActivities value) getActivities,
    required TResult Function(_GetActivitiesByType value) getActivitiesByType,
    required TResult Function(_GetActivitiesByPrice value) getActivitiesByPrice,
    required TResult Function(_GetActivitiesByParticipants value)
        getActivitiesByParticipants,
    required TResult Function(_LikeActivity value) likeActivity,
    required TResult Function(_BookActivity value) bookActivity,
  }) {
    return getActivitiesByType(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SetActivityFilter value)? setActivityFilter,
    TResult? Function(_GetActivities value)? getActivities,
    TResult? Function(_GetActivitiesByType value)? getActivitiesByType,
    TResult? Function(_GetActivitiesByPrice value)? getActivitiesByPrice,
    TResult? Function(_GetActivitiesByParticipants value)?
        getActivitiesByParticipants,
    TResult? Function(_LikeActivity value)? likeActivity,
    TResult? Function(_BookActivity value)? bookActivity,
  }) {
    return getActivitiesByType?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_SetActivityFilter value)? setActivityFilter,
    TResult Function(_GetActivities value)? getActivities,
    TResult Function(_GetActivitiesByType value)? getActivitiesByType,
    TResult Function(_GetActivitiesByPrice value)? getActivitiesByPrice,
    TResult Function(_GetActivitiesByParticipants value)?
        getActivitiesByParticipants,
    TResult Function(_LikeActivity value)? likeActivity,
    TResult Function(_BookActivity value)? bookActivity,
    required TResult orElse(),
  }) {
    if (getActivitiesByType != null) {
      return getActivitiesByType(this);
    }
    return orElse();
  }
}

abstract class _GetActivitiesByType implements ActivityEvent {
  const factory _GetActivitiesByType({required final String type}) =
      _$GetActivitiesByTypeImpl;

  String get type;
  @JsonKey(ignore: true)
  _$$GetActivitiesByTypeImplCopyWith<_$GetActivitiesByTypeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetActivitiesByPriceImplCopyWith<$Res> {
  factory _$$GetActivitiesByPriceImplCopyWith(_$GetActivitiesByPriceImpl value,
          $Res Function(_$GetActivitiesByPriceImpl) then) =
      __$$GetActivitiesByPriceImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String minValue, String maxValue});
}

/// @nodoc
class __$$GetActivitiesByPriceImplCopyWithImpl<$Res>
    extends _$ActivityEventCopyWithImpl<$Res, _$GetActivitiesByPriceImpl>
    implements _$$GetActivitiesByPriceImplCopyWith<$Res> {
  __$$GetActivitiesByPriceImplCopyWithImpl(_$GetActivitiesByPriceImpl _value,
      $Res Function(_$GetActivitiesByPriceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? minValue = null,
    Object? maxValue = null,
  }) {
    return _then(_$GetActivitiesByPriceImpl(
      minValue: null == minValue
          ? _value.minValue
          : minValue // ignore: cast_nullable_to_non_nullable
              as String,
      maxValue: null == maxValue
          ? _value.maxValue
          : maxValue // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetActivitiesByPriceImpl implements _GetActivitiesByPrice {
  const _$GetActivitiesByPriceImpl(
      {required this.minValue, required this.maxValue});

  @override
  final String minValue;
  @override
  final String maxValue;

  @override
  String toString() {
    return 'ActivityEvent.getActivitiesByPrice(minValue: $minValue, maxValue: $maxValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetActivitiesByPriceImpl &&
            (identical(other.minValue, minValue) ||
                other.minValue == minValue) &&
            (identical(other.maxValue, maxValue) ||
                other.maxValue == maxValue));
  }

  @override
  int get hashCode => Object.hash(runtimeType, minValue, maxValue);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetActivitiesByPriceImplCopyWith<_$GetActivitiesByPriceImpl>
      get copyWith =>
          __$$GetActivitiesByPriceImplCopyWithImpl<_$GetActivitiesByPriceImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool loading) loading,
    required TResult Function(String filter) setActivityFilter,
    required TResult Function() getActivities,
    required TResult Function(String type) getActivitiesByType,
    required TResult Function(String minValue, String maxValue)
        getActivitiesByPrice,
    required TResult Function(String participants) getActivitiesByParticipants,
    required TResult Function(List<Activity> activities, Activity activity)
        likeActivity,
    required TResult Function(List<Activity> activities, Activity activity)
        bookActivity,
  }) {
    return getActivitiesByPrice(minValue, maxValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool loading)? loading,
    TResult? Function(String filter)? setActivityFilter,
    TResult? Function()? getActivities,
    TResult? Function(String type)? getActivitiesByType,
    TResult? Function(String minValue, String maxValue)? getActivitiesByPrice,
    TResult? Function(String participants)? getActivitiesByParticipants,
    TResult? Function(List<Activity> activities, Activity activity)?
        likeActivity,
    TResult? Function(List<Activity> activities, Activity activity)?
        bookActivity,
  }) {
    return getActivitiesByPrice?.call(minValue, maxValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool loading)? loading,
    TResult Function(String filter)? setActivityFilter,
    TResult Function()? getActivities,
    TResult Function(String type)? getActivitiesByType,
    TResult Function(String minValue, String maxValue)? getActivitiesByPrice,
    TResult Function(String participants)? getActivitiesByParticipants,
    TResult Function(List<Activity> activities, Activity activity)?
        likeActivity,
    TResult Function(List<Activity> activities, Activity activity)?
        bookActivity,
    required TResult orElse(),
  }) {
    if (getActivitiesByPrice != null) {
      return getActivitiesByPrice(minValue, maxValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_SetActivityFilter value) setActivityFilter,
    required TResult Function(_GetActivities value) getActivities,
    required TResult Function(_GetActivitiesByType value) getActivitiesByType,
    required TResult Function(_GetActivitiesByPrice value) getActivitiesByPrice,
    required TResult Function(_GetActivitiesByParticipants value)
        getActivitiesByParticipants,
    required TResult Function(_LikeActivity value) likeActivity,
    required TResult Function(_BookActivity value) bookActivity,
  }) {
    return getActivitiesByPrice(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SetActivityFilter value)? setActivityFilter,
    TResult? Function(_GetActivities value)? getActivities,
    TResult? Function(_GetActivitiesByType value)? getActivitiesByType,
    TResult? Function(_GetActivitiesByPrice value)? getActivitiesByPrice,
    TResult? Function(_GetActivitiesByParticipants value)?
        getActivitiesByParticipants,
    TResult? Function(_LikeActivity value)? likeActivity,
    TResult? Function(_BookActivity value)? bookActivity,
  }) {
    return getActivitiesByPrice?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_SetActivityFilter value)? setActivityFilter,
    TResult Function(_GetActivities value)? getActivities,
    TResult Function(_GetActivitiesByType value)? getActivitiesByType,
    TResult Function(_GetActivitiesByPrice value)? getActivitiesByPrice,
    TResult Function(_GetActivitiesByParticipants value)?
        getActivitiesByParticipants,
    TResult Function(_LikeActivity value)? likeActivity,
    TResult Function(_BookActivity value)? bookActivity,
    required TResult orElse(),
  }) {
    if (getActivitiesByPrice != null) {
      return getActivitiesByPrice(this);
    }
    return orElse();
  }
}

abstract class _GetActivitiesByPrice implements ActivityEvent {
  const factory _GetActivitiesByPrice(
      {required final String minValue,
      required final String maxValue}) = _$GetActivitiesByPriceImpl;

  String get minValue;
  String get maxValue;
  @JsonKey(ignore: true)
  _$$GetActivitiesByPriceImplCopyWith<_$GetActivitiesByPriceImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetActivitiesByParticipantsImplCopyWith<$Res> {
  factory _$$GetActivitiesByParticipantsImplCopyWith(
          _$GetActivitiesByParticipantsImpl value,
          $Res Function(_$GetActivitiesByParticipantsImpl) then) =
      __$$GetActivitiesByParticipantsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String participants});
}

/// @nodoc
class __$$GetActivitiesByParticipantsImplCopyWithImpl<$Res>
    extends _$ActivityEventCopyWithImpl<$Res, _$GetActivitiesByParticipantsImpl>
    implements _$$GetActivitiesByParticipantsImplCopyWith<$Res> {
  __$$GetActivitiesByParticipantsImplCopyWithImpl(
      _$GetActivitiesByParticipantsImpl _value,
      $Res Function(_$GetActivitiesByParticipantsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? participants = null,
  }) {
    return _then(_$GetActivitiesByParticipantsImpl(
      participants: null == participants
          ? _value.participants
          : participants // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetActivitiesByParticipantsImpl
    implements _GetActivitiesByParticipants {
  const _$GetActivitiesByParticipantsImpl({required this.participants});

  @override
  final String participants;

  @override
  String toString() {
    return 'ActivityEvent.getActivitiesByParticipants(participants: $participants)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetActivitiesByParticipantsImpl &&
            (identical(other.participants, participants) ||
                other.participants == participants));
  }

  @override
  int get hashCode => Object.hash(runtimeType, participants);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetActivitiesByParticipantsImplCopyWith<_$GetActivitiesByParticipantsImpl>
      get copyWith => __$$GetActivitiesByParticipantsImplCopyWithImpl<
          _$GetActivitiesByParticipantsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool loading) loading,
    required TResult Function(String filter) setActivityFilter,
    required TResult Function() getActivities,
    required TResult Function(String type) getActivitiesByType,
    required TResult Function(String minValue, String maxValue)
        getActivitiesByPrice,
    required TResult Function(String participants) getActivitiesByParticipants,
    required TResult Function(List<Activity> activities, Activity activity)
        likeActivity,
    required TResult Function(List<Activity> activities, Activity activity)
        bookActivity,
  }) {
    return getActivitiesByParticipants(participants);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool loading)? loading,
    TResult? Function(String filter)? setActivityFilter,
    TResult? Function()? getActivities,
    TResult? Function(String type)? getActivitiesByType,
    TResult? Function(String minValue, String maxValue)? getActivitiesByPrice,
    TResult? Function(String participants)? getActivitiesByParticipants,
    TResult? Function(List<Activity> activities, Activity activity)?
        likeActivity,
    TResult? Function(List<Activity> activities, Activity activity)?
        bookActivity,
  }) {
    return getActivitiesByParticipants?.call(participants);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool loading)? loading,
    TResult Function(String filter)? setActivityFilter,
    TResult Function()? getActivities,
    TResult Function(String type)? getActivitiesByType,
    TResult Function(String minValue, String maxValue)? getActivitiesByPrice,
    TResult Function(String participants)? getActivitiesByParticipants,
    TResult Function(List<Activity> activities, Activity activity)?
        likeActivity,
    TResult Function(List<Activity> activities, Activity activity)?
        bookActivity,
    required TResult orElse(),
  }) {
    if (getActivitiesByParticipants != null) {
      return getActivitiesByParticipants(participants);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_SetActivityFilter value) setActivityFilter,
    required TResult Function(_GetActivities value) getActivities,
    required TResult Function(_GetActivitiesByType value) getActivitiesByType,
    required TResult Function(_GetActivitiesByPrice value) getActivitiesByPrice,
    required TResult Function(_GetActivitiesByParticipants value)
        getActivitiesByParticipants,
    required TResult Function(_LikeActivity value) likeActivity,
    required TResult Function(_BookActivity value) bookActivity,
  }) {
    return getActivitiesByParticipants(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SetActivityFilter value)? setActivityFilter,
    TResult? Function(_GetActivities value)? getActivities,
    TResult? Function(_GetActivitiesByType value)? getActivitiesByType,
    TResult? Function(_GetActivitiesByPrice value)? getActivitiesByPrice,
    TResult? Function(_GetActivitiesByParticipants value)?
        getActivitiesByParticipants,
    TResult? Function(_LikeActivity value)? likeActivity,
    TResult? Function(_BookActivity value)? bookActivity,
  }) {
    return getActivitiesByParticipants?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_SetActivityFilter value)? setActivityFilter,
    TResult Function(_GetActivities value)? getActivities,
    TResult Function(_GetActivitiesByType value)? getActivitiesByType,
    TResult Function(_GetActivitiesByPrice value)? getActivitiesByPrice,
    TResult Function(_GetActivitiesByParticipants value)?
        getActivitiesByParticipants,
    TResult Function(_LikeActivity value)? likeActivity,
    TResult Function(_BookActivity value)? bookActivity,
    required TResult orElse(),
  }) {
    if (getActivitiesByParticipants != null) {
      return getActivitiesByParticipants(this);
    }
    return orElse();
  }
}

abstract class _GetActivitiesByParticipants implements ActivityEvent {
  const factory _GetActivitiesByParticipants(
      {required final String participants}) = _$GetActivitiesByParticipantsImpl;

  String get participants;
  @JsonKey(ignore: true)
  _$$GetActivitiesByParticipantsImplCopyWith<_$GetActivitiesByParticipantsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LikeActivityImplCopyWith<$Res> {
  factory _$$LikeActivityImplCopyWith(
          _$LikeActivityImpl value, $Res Function(_$LikeActivityImpl) then) =
      __$$LikeActivityImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Activity> activities, Activity activity});

  $ActivityCopyWith<$Res> get activity;
}

/// @nodoc
class __$$LikeActivityImplCopyWithImpl<$Res>
    extends _$ActivityEventCopyWithImpl<$Res, _$LikeActivityImpl>
    implements _$$LikeActivityImplCopyWith<$Res> {
  __$$LikeActivityImplCopyWithImpl(
      _$LikeActivityImpl _value, $Res Function(_$LikeActivityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? activities = null,
    Object? activity = null,
  }) {
    return _then(_$LikeActivityImpl(
      activities: null == activities
          ? _value._activities
          : activities // ignore: cast_nullable_to_non_nullable
              as List<Activity>,
      activity: null == activity
          ? _value.activity
          : activity // ignore: cast_nullable_to_non_nullable
              as Activity,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ActivityCopyWith<$Res> get activity {
    return $ActivityCopyWith<$Res>(_value.activity, (value) {
      return _then(_value.copyWith(activity: value));
    });
  }
}

/// @nodoc

class _$LikeActivityImpl implements _LikeActivity {
  const _$LikeActivityImpl(
      {required final List<Activity> activities, required this.activity})
      : _activities = activities;

  final List<Activity> _activities;
  @override
  List<Activity> get activities {
    if (_activities is EqualUnmodifiableListView) return _activities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_activities);
  }

  @override
  final Activity activity;

  @override
  String toString() {
    return 'ActivityEvent.likeActivity(activities: $activities, activity: $activity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LikeActivityImpl &&
            const DeepCollectionEquality()
                .equals(other._activities, _activities) &&
            (identical(other.activity, activity) ||
                other.activity == activity));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_activities), activity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LikeActivityImplCopyWith<_$LikeActivityImpl> get copyWith =>
      __$$LikeActivityImplCopyWithImpl<_$LikeActivityImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool loading) loading,
    required TResult Function(String filter) setActivityFilter,
    required TResult Function() getActivities,
    required TResult Function(String type) getActivitiesByType,
    required TResult Function(String minValue, String maxValue)
        getActivitiesByPrice,
    required TResult Function(String participants) getActivitiesByParticipants,
    required TResult Function(List<Activity> activities, Activity activity)
        likeActivity,
    required TResult Function(List<Activity> activities, Activity activity)
        bookActivity,
  }) {
    return likeActivity(activities, activity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool loading)? loading,
    TResult? Function(String filter)? setActivityFilter,
    TResult? Function()? getActivities,
    TResult? Function(String type)? getActivitiesByType,
    TResult? Function(String minValue, String maxValue)? getActivitiesByPrice,
    TResult? Function(String participants)? getActivitiesByParticipants,
    TResult? Function(List<Activity> activities, Activity activity)?
        likeActivity,
    TResult? Function(List<Activity> activities, Activity activity)?
        bookActivity,
  }) {
    return likeActivity?.call(activities, activity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool loading)? loading,
    TResult Function(String filter)? setActivityFilter,
    TResult Function()? getActivities,
    TResult Function(String type)? getActivitiesByType,
    TResult Function(String minValue, String maxValue)? getActivitiesByPrice,
    TResult Function(String participants)? getActivitiesByParticipants,
    TResult Function(List<Activity> activities, Activity activity)?
        likeActivity,
    TResult Function(List<Activity> activities, Activity activity)?
        bookActivity,
    required TResult orElse(),
  }) {
    if (likeActivity != null) {
      return likeActivity(activities, activity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_SetActivityFilter value) setActivityFilter,
    required TResult Function(_GetActivities value) getActivities,
    required TResult Function(_GetActivitiesByType value) getActivitiesByType,
    required TResult Function(_GetActivitiesByPrice value) getActivitiesByPrice,
    required TResult Function(_GetActivitiesByParticipants value)
        getActivitiesByParticipants,
    required TResult Function(_LikeActivity value) likeActivity,
    required TResult Function(_BookActivity value) bookActivity,
  }) {
    return likeActivity(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SetActivityFilter value)? setActivityFilter,
    TResult? Function(_GetActivities value)? getActivities,
    TResult? Function(_GetActivitiesByType value)? getActivitiesByType,
    TResult? Function(_GetActivitiesByPrice value)? getActivitiesByPrice,
    TResult? Function(_GetActivitiesByParticipants value)?
        getActivitiesByParticipants,
    TResult? Function(_LikeActivity value)? likeActivity,
    TResult? Function(_BookActivity value)? bookActivity,
  }) {
    return likeActivity?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_SetActivityFilter value)? setActivityFilter,
    TResult Function(_GetActivities value)? getActivities,
    TResult Function(_GetActivitiesByType value)? getActivitiesByType,
    TResult Function(_GetActivitiesByPrice value)? getActivitiesByPrice,
    TResult Function(_GetActivitiesByParticipants value)?
        getActivitiesByParticipants,
    TResult Function(_LikeActivity value)? likeActivity,
    TResult Function(_BookActivity value)? bookActivity,
    required TResult orElse(),
  }) {
    if (likeActivity != null) {
      return likeActivity(this);
    }
    return orElse();
  }
}

abstract class _LikeActivity implements ActivityEvent {
  const factory _LikeActivity(
      {required final List<Activity> activities,
      required final Activity activity}) = _$LikeActivityImpl;

  List<Activity> get activities;
  Activity get activity;
  @JsonKey(ignore: true)
  _$$LikeActivityImplCopyWith<_$LikeActivityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BookActivityImplCopyWith<$Res> {
  factory _$$BookActivityImplCopyWith(
          _$BookActivityImpl value, $Res Function(_$BookActivityImpl) then) =
      __$$BookActivityImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Activity> activities, Activity activity});

  $ActivityCopyWith<$Res> get activity;
}

/// @nodoc
class __$$BookActivityImplCopyWithImpl<$Res>
    extends _$ActivityEventCopyWithImpl<$Res, _$BookActivityImpl>
    implements _$$BookActivityImplCopyWith<$Res> {
  __$$BookActivityImplCopyWithImpl(
      _$BookActivityImpl _value, $Res Function(_$BookActivityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? activities = null,
    Object? activity = null,
  }) {
    return _then(_$BookActivityImpl(
      activities: null == activities
          ? _value._activities
          : activities // ignore: cast_nullable_to_non_nullable
              as List<Activity>,
      activity: null == activity
          ? _value.activity
          : activity // ignore: cast_nullable_to_non_nullable
              as Activity,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ActivityCopyWith<$Res> get activity {
    return $ActivityCopyWith<$Res>(_value.activity, (value) {
      return _then(_value.copyWith(activity: value));
    });
  }
}

/// @nodoc

class _$BookActivityImpl implements _BookActivity {
  const _$BookActivityImpl(
      {required final List<Activity> activities, required this.activity})
      : _activities = activities;

  final List<Activity> _activities;
  @override
  List<Activity> get activities {
    if (_activities is EqualUnmodifiableListView) return _activities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_activities);
  }

  @override
  final Activity activity;

  @override
  String toString() {
    return 'ActivityEvent.bookActivity(activities: $activities, activity: $activity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookActivityImpl &&
            const DeepCollectionEquality()
                .equals(other._activities, _activities) &&
            (identical(other.activity, activity) ||
                other.activity == activity));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_activities), activity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BookActivityImplCopyWith<_$BookActivityImpl> get copyWith =>
      __$$BookActivityImplCopyWithImpl<_$BookActivityImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool loading) loading,
    required TResult Function(String filter) setActivityFilter,
    required TResult Function() getActivities,
    required TResult Function(String type) getActivitiesByType,
    required TResult Function(String minValue, String maxValue)
        getActivitiesByPrice,
    required TResult Function(String participants) getActivitiesByParticipants,
    required TResult Function(List<Activity> activities, Activity activity)
        likeActivity,
    required TResult Function(List<Activity> activities, Activity activity)
        bookActivity,
  }) {
    return bookActivity(activities, activity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool loading)? loading,
    TResult? Function(String filter)? setActivityFilter,
    TResult? Function()? getActivities,
    TResult? Function(String type)? getActivitiesByType,
    TResult? Function(String minValue, String maxValue)? getActivitiesByPrice,
    TResult? Function(String participants)? getActivitiesByParticipants,
    TResult? Function(List<Activity> activities, Activity activity)?
        likeActivity,
    TResult? Function(List<Activity> activities, Activity activity)?
        bookActivity,
  }) {
    return bookActivity?.call(activities, activity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool loading)? loading,
    TResult Function(String filter)? setActivityFilter,
    TResult Function()? getActivities,
    TResult Function(String type)? getActivitiesByType,
    TResult Function(String minValue, String maxValue)? getActivitiesByPrice,
    TResult Function(String participants)? getActivitiesByParticipants,
    TResult Function(List<Activity> activities, Activity activity)?
        likeActivity,
    TResult Function(List<Activity> activities, Activity activity)?
        bookActivity,
    required TResult orElse(),
  }) {
    if (bookActivity != null) {
      return bookActivity(activities, activity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_SetActivityFilter value) setActivityFilter,
    required TResult Function(_GetActivities value) getActivities,
    required TResult Function(_GetActivitiesByType value) getActivitiesByType,
    required TResult Function(_GetActivitiesByPrice value) getActivitiesByPrice,
    required TResult Function(_GetActivitiesByParticipants value)
        getActivitiesByParticipants,
    required TResult Function(_LikeActivity value) likeActivity,
    required TResult Function(_BookActivity value) bookActivity,
  }) {
    return bookActivity(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SetActivityFilter value)? setActivityFilter,
    TResult? Function(_GetActivities value)? getActivities,
    TResult? Function(_GetActivitiesByType value)? getActivitiesByType,
    TResult? Function(_GetActivitiesByPrice value)? getActivitiesByPrice,
    TResult? Function(_GetActivitiesByParticipants value)?
        getActivitiesByParticipants,
    TResult? Function(_LikeActivity value)? likeActivity,
    TResult? Function(_BookActivity value)? bookActivity,
  }) {
    return bookActivity?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_SetActivityFilter value)? setActivityFilter,
    TResult Function(_GetActivities value)? getActivities,
    TResult Function(_GetActivitiesByType value)? getActivitiesByType,
    TResult Function(_GetActivitiesByPrice value)? getActivitiesByPrice,
    TResult Function(_GetActivitiesByParticipants value)?
        getActivitiesByParticipants,
    TResult Function(_LikeActivity value)? likeActivity,
    TResult Function(_BookActivity value)? bookActivity,
    required TResult orElse(),
  }) {
    if (bookActivity != null) {
      return bookActivity(this);
    }
    return orElse();
  }
}

abstract class _BookActivity implements ActivityEvent {
  const factory _BookActivity(
      {required final List<Activity> activities,
      required final Activity activity}) = _$BookActivityImpl;

  List<Activity> get activities;
  Activity get activity;
  @JsonKey(ignore: true)
  _$$BookActivityImplCopyWith<_$BookActivityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
