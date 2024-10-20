import 'package:freezed_annotation/freezed_annotation.dart';

part 'passport_data.freezed.dart';
part 'passport_data.g.dart';

@freezed
class PassportData with _$PassportData {
  const factory PassportData({
    int? id,
    String? fullname,
    Gender? gender,
    DateTime? dateOfBirth,
    String? placeOfBirth,
    String? series,
    DateTime? dateOfIssue,
    int? departmentCode,
    String? issuedBy,
  }) = _PassportData;

  factory PassportData.fromJson(Map<String, Object?> json) =>
      _$PassportDataFromJson(json);
}

enum Gender { MALE, FEMALE }
