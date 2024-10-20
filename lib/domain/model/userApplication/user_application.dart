import 'package:chguburoapp/domain/model/service_data/service_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../profile/profile.dart';
import '../user/user.dart';

part 'user_application.freezed.dart';
part 'user_application.g.dart';

@freezed
class UserApplication with _$UserApplication {
  const factory UserApplication({
    int? id,
    ServiceData? service,
    @Default(ApplicationStatus.SENT) ApplicationStatus applictionStatus,
    User? user
  }) = _UserApplication;

  factory UserApplication.fromJson(Map<String, Object?> json) =>
      _$UserApplicationFromJson(json);
}

enum ApplicationStatus { SENT, UNDER_CONSIDERATION, CONFIRMED }
