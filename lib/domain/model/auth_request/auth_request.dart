import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_request.freezed.dart';
part 'auth_request.g.dart';

@freezed
class AuthRequest with _$AuthRequest {
  const factory AuthRequest({
    required String username,
    required String password,
  }) = _AuthRequest;

  factory AuthRequest.fromJson(Map<String, Object?> json)
      => _$AuthRequestFromJson(json);
}