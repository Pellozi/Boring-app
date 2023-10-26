
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'activity_model.freezed.dart';
part 'activity_model.g.dart';

@freezed
@immutable
class Activity with _$Activity {
  const factory Activity({
    String? activity,
    String? type,
    String? description,
    int? participants,
    double? price,
    double? accessibility,
    String? link,
    String? key,
    String? locality,
    int? totalLikes,
    bool? liked,
  }) = _Activity;

  factory Activity.fromJson(Map<String, dynamic> json)
  => _$ActivityFromJson(json);
}