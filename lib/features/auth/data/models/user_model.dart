import 'package:intl/intl.dart';

import '../../domain/entities/user.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user_model.g.dart';

@JsonSerializable()
class UserModel {
  final int identifier;
  final String name;
  final String? email;
  final String role;
  final String? photo;
  final String? telecom;
  final int gender;
  final String birthDate;
  final String? address;

  const UserModel({
    required this.identifier,
    required this.name,
    this.email,
    required this.role,
    this.photo,
    this.telecom,
    required this.gender,
    required this.birthDate,
    this.address,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  Map<String, dynamic> toJson() => _$UserModelToJson(this);

  User toEntity() {
    DateFormat format = DateFormat("yyyy-MM-dd");
    return User(
      id: identifier,
      name: name,
      email: email,
      role: role,
      photo: photo ?? "https://thumb.ac-illust.com/51/51e1c1fc6f50743937e62fca9b942694_t.jpeg",
      telecom: telecom,
      gender: gender == 1,
      birthDate: format.parse(birthDate),
      address: address,
    );
  }
}
