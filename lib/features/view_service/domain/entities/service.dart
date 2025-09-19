import 'package:isar/isar.dart';

import 'location.dart';

class Service {
  final int id;
  final String name;
  String? extraDetails;
  final float? price;
  Location location;
  final bool isCompleted;

  Service({
    required this.id,
    required this.name,
    this.extraDetails,
    this.price = 0.0,
    required this.location,
    this.isCompleted = true,
  });
}
