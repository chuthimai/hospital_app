class Location {
  final int id;
  final String name;
  final Location? partOfLocation;

  Location({
    required this.id,
    required this.name,
    this.partOfLocation,
  });
}
