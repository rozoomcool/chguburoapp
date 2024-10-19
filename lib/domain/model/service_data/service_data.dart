import 'package:chguburoapp/domain/model/document/document.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../user/user.dart';

part 'service_data.freezed.dart';
part 'service_data.g.dart';

@freezed
class ServiceData with _$ServiceData {
  const factory ServiceData({
    num? id,
    @Default(Role.STUDENT) Role forRole,
    required String title,
    Document? document,
  }) = _ServiceData;

  factory ServiceData.fromJson(Map<String, Object?> json)
      => _$ServiceDataFromJson(json);
}