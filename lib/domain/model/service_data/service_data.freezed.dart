// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'service_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ServiceData _$ServiceDataFromJson(Map<String, dynamic> json) {
  return _ServiceData.fromJson(json);
}

/// @nodoc
mixin _$ServiceData {
  num? get id => throw _privateConstructorUsedError;
  Role get forRole => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  Document? get document => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ServiceDataCopyWith<ServiceData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServiceDataCopyWith<$Res> {
  factory $ServiceDataCopyWith(
          ServiceData value, $Res Function(ServiceData) then) =
      _$ServiceDataCopyWithImpl<$Res, ServiceData>;
  @useResult
  $Res call({num? id, Role forRole, String title, Document? document});

  $DocumentCopyWith<$Res>? get document;
}

/// @nodoc
class _$ServiceDataCopyWithImpl<$Res, $Val extends ServiceData>
    implements $ServiceDataCopyWith<$Res> {
  _$ServiceDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? forRole = null,
    Object? title = null,
    Object? document = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as num?,
      forRole: null == forRole
          ? _value.forRole
          : forRole // ignore: cast_nullable_to_non_nullable
              as Role,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      document: freezed == document
          ? _value.document
          : document // ignore: cast_nullable_to_non_nullable
              as Document?,
    ) as $Val);
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
}

/// @nodoc
abstract class _$$ServiceDataImplCopyWith<$Res>
    implements $ServiceDataCopyWith<$Res> {
  factory _$$ServiceDataImplCopyWith(
          _$ServiceDataImpl value, $Res Function(_$ServiceDataImpl) then) =
      __$$ServiceDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({num? id, Role forRole, String title, Document? document});

  @override
  $DocumentCopyWith<$Res>? get document;
}

/// @nodoc
class __$$ServiceDataImplCopyWithImpl<$Res>
    extends _$ServiceDataCopyWithImpl<$Res, _$ServiceDataImpl>
    implements _$$ServiceDataImplCopyWith<$Res> {
  __$$ServiceDataImplCopyWithImpl(
      _$ServiceDataImpl _value, $Res Function(_$ServiceDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? forRole = null,
    Object? title = null,
    Object? document = freezed,
  }) {
    return _then(_$ServiceDataImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as num?,
      forRole: null == forRole
          ? _value.forRole
          : forRole // ignore: cast_nullable_to_non_nullable
              as Role,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      document: freezed == document
          ? _value.document
          : document // ignore: cast_nullable_to_non_nullable
              as Document?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ServiceDataImpl implements _ServiceData {
  const _$ServiceDataImpl(
      {this.id,
      this.forRole = Role.STUDENT,
      required this.title,
      this.document});

  factory _$ServiceDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ServiceDataImplFromJson(json);

  @override
  final num? id;
  @override
  @JsonKey()
  final Role forRole;
  @override
  final String title;
  @override
  final Document? document;

  @override
  String toString() {
    return 'ServiceData(id: $id, forRole: $forRole, title: $title, document: $document)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServiceDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.forRole, forRole) || other.forRole == forRole) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.document, document) ||
                other.document == document));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, forRole, title, document);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ServiceDataImplCopyWith<_$ServiceDataImpl> get copyWith =>
      __$$ServiceDataImplCopyWithImpl<_$ServiceDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ServiceDataImplToJson(
      this,
    );
  }
}

abstract class _ServiceData implements ServiceData {
  const factory _ServiceData(
      {final num? id,
      final Role forRole,
      required final String title,
      final Document? document}) = _$ServiceDataImpl;

  factory _ServiceData.fromJson(Map<String, dynamic> json) =
      _$ServiceDataImpl.fromJson;

  @override
  num? get id;
  @override
  Role get forRole;
  @override
  String get title;
  @override
  Document? get document;
  @override
  @JsonKey(ignore: true)
  _$$ServiceDataImplCopyWith<_$ServiceDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
