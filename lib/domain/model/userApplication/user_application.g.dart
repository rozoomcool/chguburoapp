// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_application.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserApplicationImpl _$$UserApplicationImplFromJson(
        Map<String, dynamic> json) =>
    _$UserApplicationImpl(
      id: (json['id'] as num?)?.toInt(),
      service: json['service'] == null
          ? null
          : ServiceData.fromJson(json['service'] as Map<String, dynamic>),
      applictionStatus: $enumDecodeNullable(
              _$ApplicationStatusEnumMap, json['applictionStatus']) ??
          ApplicationStatus.SENT,
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UserApplicationImplToJson(
        _$UserApplicationImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'service': instance.service,
      'applictionStatus':
          _$ApplicationStatusEnumMap[instance.applictionStatus]!,
      'user': instance.user,
    };

const _$ApplicationStatusEnumMap = {
  ApplicationStatus.SENT: 'SENT',
  ApplicationStatus.UNDER_CONSIDERATION: 'UNDER_CONSIDERATION',
  ApplicationStatus.CONFIRMED: 'CONFIRMED',
};
