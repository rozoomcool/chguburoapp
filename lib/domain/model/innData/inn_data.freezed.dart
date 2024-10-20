// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'inn_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

InnData _$InnDataFromJson(Map<String, dynamic> json) {
  return _InnData.fromJson(json);
}

/// @nodoc
mixin _$InnData {
  int? get id => throw _privateConstructorUsedError;
  String? get series => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InnDataCopyWith<InnData> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InnDataCopyWith<$Res> {
  factory $InnDataCopyWith(InnData value, $Res Function(InnData) then) =
      _$InnDataCopyWithImpl<$Res, InnData>;
  @useResult
  $Res call({int? id, String? series});
}

/// @nodoc
class _$InnDataCopyWithImpl<$Res, $Val extends InnData>
    implements $InnDataCopyWith<$Res> {
  _$InnDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? series = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      series: freezed == series
          ? _value.series
          : series // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InnDataImplCopyWith<$Res> implements $InnDataCopyWith<$Res> {
  factory _$$InnDataImplCopyWith(
          _$InnDataImpl value, $Res Function(_$InnDataImpl) then) =
      __$$InnDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? series});
}

/// @nodoc
class __$$InnDataImplCopyWithImpl<$Res>
    extends _$InnDataCopyWithImpl<$Res, _$InnDataImpl>
    implements _$$InnDataImplCopyWith<$Res> {
  __$$InnDataImplCopyWithImpl(
      _$InnDataImpl _value, $Res Function(_$InnDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? series = freezed,
  }) {
    return _then(_$InnDataImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      series: freezed == series
          ? _value.series
          : series // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InnDataImpl implements _InnData {
  const _$InnDataImpl({this.id, this.series});

  factory _$InnDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$InnDataImplFromJson(json);

  @override
  final int? id;
  @override
  final String? series;

  @override
  String toString() {
    return 'InnData(id: $id, series: $series)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InnDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.series, series) || other.series == series));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, series);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InnDataImplCopyWith<_$InnDataImpl> get copyWith =>
      __$$InnDataImplCopyWithImpl<_$InnDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InnDataImplToJson(
      this,
    );
  }
}

abstract class _InnData implements InnData {
  const factory _InnData({final int? id, final String? series}) = _$InnDataImpl;

  factory _InnData.fromJson(Map<String, dynamic> json) = _$InnDataImpl.fromJson;

  @override
  int? get id;
  @override
  String? get series;
  @override
  @JsonKey(ignore: true)
  _$$InnDataImplCopyWith<_$InnDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
