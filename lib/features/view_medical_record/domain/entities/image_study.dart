class ImageStudy {
  final int id;
  final String endpoint;
  final DateTime? receivedTime;

  ImageStudy({
    required this.id,
    required this.endpoint,
    this.receivedTime,
  });
}