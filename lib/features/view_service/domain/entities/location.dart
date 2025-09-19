class Location {
  final int id;
  final String name;
  final Location? partOf;

  Location({
    required this.id,
    required this.name,
    this.partOf,
  });

  String get fullAddress {
    final buffer = StringBuffer();
    Location? current = this;

    while (current != null) {
      if (buffer.isNotEmpty) {
        buffer.write(', ');
      }
      buffer.write(current.name);
      current = current.partOf;
    }

    return buffer.toString();
  }
}
