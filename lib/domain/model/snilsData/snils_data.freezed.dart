// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'snils_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SnilsData _$SnilsDataFromJson(Map<String, dynamic> json) {
  return _SnilsData.fromJson(json);
}

/// @nodoc
mixin _$SnilsData {
  int? get id => throw _privateConstructorUsedError;
  String? get series => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SnilsDataCopyWith<SnilsData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SnilsDataCopyWith<$Res> {
  factory $SnilsDataCopyWith(SnilsData value, $Res Function(SnilsData) then) =
      _$SnilsDataCopyWithImpl<$Res, SnilsData>;
  @useResult
  $Res call({int? id, String? series});
}

/// @nodoc
class _$SnilsDataCopyWithImpl<$Res, $Val extends SnilsData>
    implements $SnilsDataCopyWith<$Res> {
  _$SnilsDataCopyWithImpl(this._value, this._then);

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
abstract class _$$SnilsDataImplCopyWith<$Res>
    implements $SnilsDataCopyWith<$Res> {
  factory _$$SnilsDataImplCopyWith(
          _$SnilsDataImpl value, $Res Function(_$SnilsDataImpl) then) =
      __$$SnilsDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? series});
}

/// @nodoc
class __$$SnilsDataImplCopyWithImpl<$Res>
    extends _$SnilsDataCopyWithImpl<$Res, _$SnilsDataImpl>
    implements _$$SnilsDataImplCopyWith<$Res> {
  __$$SnilsDataImplCopyWithImpl(
      _$SnilsDataImpl _value, $Res Function(_$SnilsDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? series = freezed,
  }) {
    return _then(_$SnilsDataImpl(
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
class _$SnilsDataImpl implements _SnilsData {
  const _$SnilsDataImpl({this.id, this.series});

  factory _$SnilsDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$SnilsDataImplFromJson(json);

  @override
  final int? id;
  @override
  final String? series;

  @override
  String toString() {
    return 'SnilsData(id: $id, series: $series)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SnilsDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.series, series) || other.series == series));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, series);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SnilsDataImplCopyWith<_$SnilsDataImpl> get copyWith =>
      __$$SnilsDataImplCopyWithImpl<_$SnilsDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SnilsDataImplToJson(
      this,
    );
  }
}

abstract class _SnilsData implements SnilsData {
  const factory _SnilsData({final int? id, final String? series}) =
      _$SnilsDataImpl;

  factory _SnilsData.fromJson(Map<String, dynamic> json) =
      _$SnilsDataImpl.fromJson;

  @override
  int? get id;
  @override
  String? get series;
  @override
  @JsonKey(ignore: true)
  _$$SnilsDataImplCopyWith<_$SnilsDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
