class AppConfig {
  static const baseUrl = String.fromEnvironment(
      'BASE_URL',
      defaultValue: 'http://192.168.0.101:3000'
  );
}
