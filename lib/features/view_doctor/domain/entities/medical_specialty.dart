class MedicalSpecialty {
  final int _id;
  final String _name;

  MedicalSpecialty({
    required int id,
    required String name,
  }) : _id = id,
        _name = name;

  int get id => _id;
  String get name => _name;
}