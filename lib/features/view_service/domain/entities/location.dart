class Location {
  final int _id;
  final String _name;
  final Location? _partOf;

  Location({
    required int id,
    required String name,
    Location? partOf,
  }) : _id = id,
        _name = name,
        _partOf = partOf;

  int get id => _id;
  String get name => _name;
  Location? get partOf => _partOf;

  String get fullAddress {
    final buffer = StringBuffer();
    Location? current = this;

    while (current != null) {
      if (buffer.isNotEmpty) {
        buffer.write(', ');
      }
      buffer.write(current._name);
      current = current._partOf;
    }

    return buffer.toString();
  }
}