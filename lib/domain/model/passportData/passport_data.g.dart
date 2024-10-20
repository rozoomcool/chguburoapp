// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'passport_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PassportDataImpl _$$PassportDataImplFromJson(Map<String, dynamic> json) =>
    _$PassportDataImpl(
      id: (json['id'] as num?)?.toInt(),
      fullname: json['fullname'] as String?,
      gender: $enumDecodeNullable(_$GenderEnumMap, json['gender']),
      dateOfBirth: json['dateOfBirth'] == null
          ? null
          : DateTime.parse(json['dateOfBirth'] as String),
      placeOfBirth: json['placeOfBirth'] as String?,
      series: json['series'] as String?,
      dateOfIssue: json['dateOfIssue'] == null
          ? null
          : DateTime.parse(json['dateOfIssue'] as String),
      departmentCode: (json['departmentCode'] as num?)?.toInt(),
      issuedBy: json['issuedBy'] as String?,
    );

Map<String, dynamic> _$$PassportDataImplToJson(_$PassportDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'fullname': instance.fullname,
      'gender': _$GenderEnumMap[instance.gender],
      'dateOfBirth': instance.dateOfBirth?.toIso8601String(),
      'placeOfBirth': instance.placeOfBirth,
      'series': instance.series,
      'dateOfIssue': instance.dateOfIssue?.toIso8601String(),
      'departmentCode': instance.departmentCode,
      'issuedBy': instance.issuedBy,
    };

const _$GenderEnumMap = {
  Gender.MALE: 'MALE',
  Gender.FEMALE: 'FEMALE',
};
