class ImageStudy {
  final int _id;
  final String _endpoint;
  final DateTime? _receivedTime;

  ImageStudy({
    required int id,
    required String endpoint,
    DateTime? receivedTime,
  }) : _id = id,
        _endpoint = endpoint,
        _receivedTime = receivedTime;

  int get id => _id;
  String get endpoint => _endpoint;
  DateTime? get receivedTime => _receivedTime;
}