// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'activity_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ActivityImpl _$$ActivityImplFromJson(Map<String, dynamic> json) =>
    _$ActivityImpl(
      activity: json['activity'] as String?,
      type: json['type'] as String?,
      description: json['description'] as String?,
      participants: json['participants'] as int?,
      price: (json['price'] as num?)?.toDouble(),
      accessibility: (json['accessibility'] as num?)?.toDouble(),
      link: json['link'] as String?,
      key: json['key'] as String?,
      locality: json['locality'] as String?,
      totalLikes: json['totalLikes'] as int?,
      liked: json['liked'] as bool?,
    );

Map<String, dynamic> _$$ActivityImplToJson(_$ActivityImpl instance) =>
    <String, dynamic>{
      'activity': instance.activity,
      'type': instance.type,
      'description': instance.description,
      'participants': instance.participants,
      'price': instance.price,
      'accessibility': instance.accessibility,
      'link': instance.link,
      'key': instance.key,
      'locality': instance.locality,
      'totalLikes': instance.totalLikes,
      'liked': instance.liked,
    };
