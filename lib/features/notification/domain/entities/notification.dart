class Notification {
  final int id;
  final String title;
  final String content;
  bool isRead;

  Notification({
    required this.id,
    required this.title,
    required this.content,
    this.isRead=false,
  });
}
