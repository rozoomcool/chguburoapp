// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Profile _$ProfileFromJson(Map<String, dynamic> json) {
  return _Profile.fromJson(json);
}

/// @nodoc
mixin _$Profile {
  int? get id => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  InnData? get innData => throw _privateConstructorUsedError;
  PassportData? get passportData => throw _privateConstructorUsedError;
  SnilsData? get snilsData => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProfileCopyWith<Profile> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileCopyWith<$Res> {
  factory $ProfileCopyWith(Profile value, $Res Function(Profile) then) =
      _$ProfileCopyWithImpl<$Res, Profile>;
  @useResult
  $Res call(
      {int? id,
      String? address,
      InnData? innData,
      PassportData? passportData,
      SnilsData? snilsData});

  $InnDataCopyWith<$Res>? get innData;
  $PassportDataCopyWith<$Res>? get passportData;
  $SnilsDataCopyWith<$Res>? get snilsData;
}

/// @nodoc
class _$ProfileCopyWithImpl<$Res, $Val extends Profile>
    implements $ProfileCopyWith<$Res> {
  _$ProfileCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? address = freezed,
    Object? innData = freezed,
    Object? passportData = freezed,
    Object? snilsData = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      innData: freezed == innData
          ? _value.innData
          : innData // ignore: cast_nullable_to_non_nullable
              as InnData?,
      passportData: freezed == passportData
          ? _value.passportData
          : passportData // ignore: cast_nullable_to_non_nullable
              as PassportData?,
      snilsData: freezed == snilsData
          ? _value.snilsData
          : snilsData // ignore: cast_nullable_to_non_nullable
              as SnilsData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $InnDataCopyWith<$Res>? get innData {
    if (_value.innData == null) {
      return null;
    }

    return $InnDataCopyWith<$Res>(_value.innData!, (value) {
      return _then(_value.copyWith(innData: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PassportDataCopyWith<$Res>? get passportData {
    if (_value.passportData == null) {
      return null;
    }

    return $PassportDataCopyWith<$Res>(_value.passportData!, (value) {
      return _then(_value.copyWith(passportData: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $SnilsDataCopyWith<$Res>? get snilsData {
    if (_value.snilsData == null) {
      return null;
    }

    return $SnilsDataCopyWith<$Res>(_value.snilsData!, (value) {
      return _then(_value.copyWith(snilsData: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProfileImplCopyWith<$Res> implements $ProfileCopyWith<$Res> {
  factory _$$ProfileImplCopyWith(
          _$ProfileImpl value, $Res Function(_$ProfileImpl) then) =
      __$$ProfileImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? address,
      InnData? innData,
      PassportData? passportData,
      SnilsData? snilsData});

  @override
  $InnDataCopyWith<$Res>? get innData;
  @override
  $PassportDataCopyWith<$Res>? get passportData;
  @override
  $SnilsDataCopyWith<$Res>? get snilsData;
}

/// @nodoc
class __$$ProfileImplCopyWithImpl<$Res>
    extends _$ProfileCopyWithImpl<$Res, _$ProfileImpl>
    implements _$$ProfileImplCopyWith<$Res> {
  __$$ProfileImplCopyWithImpl(
      _$ProfileImpl _value, $Res Function(_$ProfileImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? address = freezed,
    Object? innData = freezed,
    Object? passportData = freezed,
    Object? snilsData = freezed,
  }) {
    return _then(_$ProfileImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      innData: freezed == innData
          ? _value.innData
          : innData // ignore: cast_nullable_to_non_nullable
              as InnData?,
      passportData: freezed == passportData
          ? _value.passportData
          : passportData // ignore: cast_nullable_to_non_nullable
              as PassportData?,
      snilsData: freezed == snilsData
          ? _value.snilsData
          : snilsData // ignore: cast_nullable_to_non_nullable
              as SnilsData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProfileImpl implements _Profile {
  const _$ProfileImpl(
      {this.id, this.address, this.innData, this.passportData, this.snilsData});

  factory _$ProfileImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProfileImplFromJson(json);

  @override
  final int? id;
  @override
  final String? address;
  @override
  final InnData? innData;
  @override
  final PassportData? passportData;
  @override
  final SnilsData? snilsData;

  @override
  String toString() {
    return 'Profile(id: $id, address: $address, innData: $innData, passportData: $passportData, snilsData: $snilsData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.innData, innData) || other.innData == innData) &&
            (identical(other.passportData, passportData) ||
                other.passportData == passportData) &&
            (identical(other.snilsData, snilsData) ||
                other.snilsData == snilsData));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, address, innData, passportData, snilsData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileImplCopyWith<_$ProfileImpl> get copyWith =>
      __$$ProfileImplCopyWithImpl<_$ProfileImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProfileImplToJson(
      this,
    );
  }
}

abstract class _Profile implements Profile {
  const factory _Profile(
      {final int? id,
      final String? address,
      final InnData? innData,
      final PassportData? passportData,
      final SnilsData? snilsData}) = _$ProfileImpl;

  factory _Profile.fromJson(Map<String, dynamic> json) = _$ProfileImpl.fromJson;

  @override
  int? get id;
  @override
  String? get address;
  @override
  InnData? get innData;
  @override
  PassportData? get passportData;
  @override
  SnilsData? get snilsData;
  @override
  @JsonKey(ignore: true)
  _$$ProfileImplCopyWith<_$ProfileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
