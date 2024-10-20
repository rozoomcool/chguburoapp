// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProfileImpl _$$ProfileImplFromJson(Map<String, dynamic> json) =>
    _$ProfileImpl(
      id: (json['id'] as num?)?.toInt(),
      address: json['address'] as String?,
      innData: json['innData'] == null
          ? null
          : InnData.fromJson(json['innData'] as Map<String, dynamic>),
      passportData: json['passportData'] == null
          ? null
          : PassportData.fromJson(json['passportData'] as Map<String, dynamic>),
      snilsData: json['snilsData'] == null
          ? null
          : SnilsData.fromJson(json['snilsData'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ProfileImplToJson(_$ProfileImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'address': instance.address,
      'innData': instance.innData,
      'passportData': instance.passportData,
      'snilsData': instance.snilsData,
    };
