import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  const factory User({
    int? id,
    required String username,
    String? password,
    required Role role,
    DateTime? createdAt,
    DateTime? updatedAt
  }) = _User;

  factory User.fromJson(Map<String, Object?> json)
      => _$UserFromJson(json);
}

enum Role {
  ADMINISTRATION, STUDENT
}