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
      profile: json['profile'] == null
          ? null
          : Profile.fromJson(json['profile'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'password': instance.password,
      'role': _$RoleEnumMap[instance.role]!,
      'profile': instance.profile,
    };

const _$RoleEnumMap = {
  Role.STUDENT: 'STUDENT',
  Role.EMPLOYEE: 'EMPLOYEE',
  Role.MODERATOR: 'MODERATOR',
  Role.ADMIN: 'ADMIN',
};
