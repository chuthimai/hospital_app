import 'location.dart';

class Service {
  final int id;
  final String name;
  String? detailDescription;
  Location location;
  final bool isCompleted;

  Service({
    required this.id,
    required this.name,
    this.detailDescription,
    required this.location,
    this.isCompleted = true,
  });
}
