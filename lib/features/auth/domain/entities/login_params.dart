class LoginParams {
  final int id;
  final String password;
  final String? deviceToken;

  LoginParams({required this.id, required this.password, this.deviceToken});
}
