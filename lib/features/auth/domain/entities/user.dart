class User {
  final int id;
  final String name;
  final String? email;
  final String role;
  final String? photo;
  final String? telecom;
  final bool gender;
  final DateTime birthDate;
  final String? address;

  const User({
    required this.id,
    required this.name,
    required this.email,
    required this.role,
    this.photo,
    this.telecom,
    required this.gender,
    required this.birthDate,
    this.address,
  });
}
