import 'package:json_annotation/json_annotation.dart';

import '../../domain/entities/login_params.dart';

part 'login_request.g.dart';

@JsonSerializable()
class LoginRequest {
  final int identifier;
  final String password;

  LoginRequest({required this.identifier, required this.password});

  factory LoginRequest.fromParams(LoginParams params) {
    return LoginRequest(identifier: params.id, password: params.password);
  }

  factory LoginRequest.fromJson(Map<String, dynamic> json) =>
      _$LoginRequestFromJson(json);

  Map<String, dynamic> toJson() => _$LoginRequestToJson(this);
}
