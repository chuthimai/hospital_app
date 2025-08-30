import 'location.dart';

class Service {
  final int id;
  final String name;
  String? detailDescription;
  Location? location;
  double? price;

  Service({
    required this.id,
    required this.name,
    this.detailDescription,
    this.location,
    this.price,
  });
}
