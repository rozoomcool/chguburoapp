// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inn_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InnDataImpl _$$InnDataImplFromJson(Map<String, dynamic> json) =>
    _$InnDataImpl(
      id: (json['id'] as num?)?.toInt(),
      series: json['series'] as String?,
    );

Map<String, dynamic> _$$InnDataImplToJson(_$InnDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'series': instance.series,
    };
