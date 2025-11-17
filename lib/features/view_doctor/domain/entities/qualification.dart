class Qualification {
  final int _id;
  final String _name;
  final String _specialty;
  final String _issuer;
  final String _type;
  final DateTime _effectiveDate;
  final DateTime? _expiredDate;

  Qualification({
    required int id,
    required String name,
    required String specialty,
    required String issuer,
    required String type,
    required DateTime effectiveDate,
    DateTime? expiredDate,
  }) : _id = id,
        _name = name,
        _specialty = specialty,
        _issuer = issuer,
        _type = type,
        _effectiveDate = effectiveDate,
        _expiredDate = expiredDate;

  int get id => _id;
  String get name => _name;
  String get specialty => _specialty;
  String get issuer => _issuer;
  String get type => _type;
  DateTime get effectiveDate => _effectiveDate;
  DateTime? get expiredDate => _expiredDate;
}