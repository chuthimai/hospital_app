import 'package:hospital_app/features/view_doctor/domain/entities/medical_specialty.dart';

abstract class SpecialtyState {}

class SpecialtyInitial extends SpecialtyState {}
class SpecialtyDone extends SpecialtyState {
  final List<MedicalSpecialty> specialties;

  SpecialtyDone(this.specialties);
}