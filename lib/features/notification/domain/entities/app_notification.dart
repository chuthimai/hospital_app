class AppNotification {
  final int? _id;
  final String _title;
  final String _body;
  DateTime timestamp;
  bool isRead;

  AppNotification({
    int? id,
    required String title,
    required String body,
    this.isRead = false,
    required this.timestamp,
  }) : _id = id,
        _title = title,
        _body = body;

  int? get id => _id;
  String get title => _title;
  String get body => _body;
}