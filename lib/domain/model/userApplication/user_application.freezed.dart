// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_application.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserApplication _$UserApplicationFromJson(Map<String, dynamic> json) {
  return _UserApplication.fromJson(json);
}

/// @nodoc
mixin _$UserApplication {
  int? get id => throw _privateConstructorUsedError;
  ServiceData? get service => throw _privateConstructorUsedError;
  ApplicationStatus get applictionStatus => throw _privateConstructorUsedError;
  Document? get document => throw _privateConstructorUsedError;
  User? get user => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserApplicationCopyWith<UserApplication> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserApplicationCopyWith<$Res> {
  factory $UserApplicationCopyWith(
          UserApplication value, $Res Function(UserApplication) then) =
      _$UserApplicationCopyWithImpl<$Res, UserApplication>;
  @useResult
  $Res call(
      {int? id,
      ServiceData? service,
      ApplicationStatus applictionStatus,
      Document? document,
      User? user});

  $ServiceDataCopyWith<$Res>? get service;
  $DocumentCopyWith<$Res>? get document;
  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class _$UserApplicationCopyWithImpl<$Res, $Val extends UserApplication>
    implements $UserApplicationCopyWith<$Res> {
  _$UserApplicationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? service = freezed,
    Object? applictionStatus = null,
    Object? document = freezed,
    Object? user = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      service: freezed == service
          ? _value.service
          : service // ignore: cast_nullable_to_non_nullable
              as ServiceData?,
      applictionStatus: null == applictionStatus
          ? _value.applictionStatus
          : applictionStatus // ignore: cast_nullable_to_non_nullable
              as ApplicationStatus,
      document: freezed == document
          ? _value.document
          : document // ignore: cast_nullable_to_non_nullable
              as Document?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ServiceDataCopyWith<$Res>? get service {
    if (_value.service == null) {
      return null;
    }

    return $ServiceDataCopyWith<$Res>(_value.service!, (value) {
      return _then(_value.copyWith(service: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $DocumentCopyWith<$Res>? get document {
    if (_value.document == null) {
      return null;
    }

    return $DocumentCopyWith<$Res>(_value.document!, (value) {
      return _then(_value.copyWith(document: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserApplicationImplCopyWith<$Res>
    implements $UserApplicationCopyWith<$Res> {
  factory _$$UserApplicationImplCopyWith(_$UserApplicationImpl value,
          $Res Function(_$UserApplicationImpl) then) =
      __$$UserApplicationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      ServiceData? service,
      ApplicationStatus applictionStatus,
      Document? document,
      User? user});

  @override
  $ServiceDataCopyWith<$Res>? get service;
  @override
  $DocumentCopyWith<$Res>? get document;
  @override
  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class __$$UserApplicationImplCopyWithImpl<$Res>
    extends _$UserApplicationCopyWithImpl<$Res, _$UserApplicationImpl>
    implements _$$UserApplicationImplCopyWith<$Res> {
  __$$UserApplicationImplCopyWithImpl(
      _$UserApplicationImpl _value, $Res Function(_$UserApplicationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? service = freezed,
    Object? applictionStatus = null,
    Object? document = freezed,
    Object? user = freezed,
  }) {
    return _then(_$UserApplicationImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      service: freezed == service
          ? _value.service
          : service // ignore: cast_nullable_to_non_nullable
              as ServiceData?,
      applictionStatus: null == applictionStatus
          ? _value.applictionStatus
          : applictionStatus // ignore: cast_nullable_to_non_nullable
              as ApplicationStatus,
      document: freezed == document
          ? _value.document
          : document // ignore: cast_nullable_to_non_nullable
              as Document?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserApplicationImpl implements _UserApplication {
  const _$UserApplicationImpl(
      {this.id,
      this.service,
      this.applictionStatus = ApplicationStatus.SENT,
      this.document,
      this.user});

  factory _$UserApplicationImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserApplicationImplFromJson(json);

  @override
  final int? id;
  @override
  final ServiceData? service;
  @override
  @JsonKey()
  final ApplicationStatus applictionStatus;
  @override
  final Document? document;
  @override
  final User? user;

  @override
  String toString() {
    return 'UserApplication(id: $id, service: $service, applictionStatus: $applictionStatus, document: $document, user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserApplicationImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.service, service) || other.service == service) &&
            (identical(other.applictionStatus, applictionStatus) ||
                other.applictionStatus == applictionStatus) &&
            (identical(other.document, document) ||
                other.document == document) &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, service, applictionStatus, document, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserApplicationImplCopyWith<_$UserApplicationImpl> get copyWith =>
      __$$UserApplicationImplCopyWithImpl<_$UserApplicationImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserApplicationImplToJson(
      this,
    );
  }
}

abstract class _UserApplication implements UserApplication {
  const factory _UserApplication(
      {final int? id,
      final ServiceData? service,
      final ApplicationStatus applictionStatus,
      final Document? document,
      final User? user}) = _$UserApplicationImpl;

  factory _UserApplication.fromJson(Map<String, dynamic> json) =
      _$UserApplicationImpl.fromJson;

  @override
  int? get id;
  @override
  ServiceData? get service;
  @override
  ApplicationStatus get applictionStatus;
  @override
  Document? get document;
  @override
  User? get user;
  @override
  @JsonKey(ignore: true)
  _$$UserApplicationImplCopyWith<_$UserApplicationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
