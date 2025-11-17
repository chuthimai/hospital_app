import 'location.dart';

class Service {
  final int _id;
  final String _name;
  String? extraDetails;
  final double? _price;
  Location? location;
  final bool _isCompleted;

  Service({
    required int id,
    required String name,
    this.extraDetails,
    double? price = 0.0,
    this.location,
    bool isCompleted = true,
  }) : _id = id,
        _name = name,
        _price = price,
        _isCompleted = isCompleted;

  int get id => _id;
  String get name => _name;
  double? get price => _price;
  bool get isCompleted => _isCompleted;
}