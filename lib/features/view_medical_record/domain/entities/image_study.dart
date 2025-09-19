class ImageStudy {
  final int id;
  final String endpoint;
  final String? comment;
  final String? modality;
  final DateTime? receivedTime;

  ImageStudy({
    required this.id,
    required this.endpoint,
    this.comment,
    this.modality,
    this.receivedTime,
  });
}