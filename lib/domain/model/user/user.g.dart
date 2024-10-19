// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      id: (json['id'] as num?)?.toInt(),
      username: json['username'] as String,
      password: json['password'] as String?,
      role: $enumDecode(_$RoleEnumMap, json['role']),
      department: $enumDecode(_$DepartmentEnumMap, json['department']),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'password': instance.password,
      'role': _$RoleEnumMap[instance.role]!,
      'department': _$DepartmentEnumMap[instance.department]!,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };

const _$RoleEnumMap = {
  Role.ADMINISTRATION: 'ADMINISTRATION',
  Role.STUDENT: 'STUDENT',
};

const _$DepartmentEnumMap = {
  Department.STUDENT: 'STUDENT',
  Department.ADMINISTRATION: 'ADMINISTRATION',
  Department.EDUCATION_DEPARTMENT: 'EDUCATION_DEPARTMENT',
  Department.BOOKKEEPING: 'BOOKKEEPING',
  Department.HR_DEPARTMENT: 'HR_DEPARTMENT',
};
