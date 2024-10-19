// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ServiceDataImpl _$$ServiceDataImplFromJson(Map<String, dynamic> json) =>
    _$ServiceDataImpl(
      id: json['id'] as num?,
      forRole:
          $enumDecodeNullable(_$RoleEnumMap, json['forRole']) ?? Role.STUDENT,
      title: json['title'] as String,
      document: json['document'] == null
          ? null
          : Document.fromJson(json['document'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ServiceDataImplToJson(_$ServiceDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'forRole': _$RoleEnumMap[instance.forRole]!,
      'title': instance.title,
      'document': instance.document,
    };

const _$RoleEnumMap = {
  Role.STUDENT: 'STUDENT',
  Role.EMPLOYEE: 'EMPLOYEE',
  Role.MODERATOR: 'MODERATOR',
  Role.ADMIN: 'ADMIN',
};
