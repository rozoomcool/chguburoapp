import 'package:chguburoapp/domain/model/innData/inn_data.dart';
import 'package:chguburoapp/domain/model/passportData/passport_data.dart';
import 'package:chguburoapp/domain/model/snilsData/snils_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile.freezed.dart';
part 'profile.g.dart';

@freezed
class Profile with _$Profile {
  const factory Profile(
      {int? id,
      String? address,
      InnData? innData,
      PassportData? passportData,
      SnilsData? snilsData
    }) = _Profile;

  factory Profile.fromJson(Map<String, Object?> json) => _$ProfileFromJson(json);
}
