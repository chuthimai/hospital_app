class Qualification {
  final int id;
  final String name;
  final String specialty;
  final String issuer;
  final String type;
  final DateTime effectiveDate;
  final DateTime? expiredDate;

  Qualification({
    required this.id,
    required this.name,
    required this.specialty,
    required this.issuer,
    required this.type,
    required this.effectiveDate,
    this.expiredDate,
  });
}
