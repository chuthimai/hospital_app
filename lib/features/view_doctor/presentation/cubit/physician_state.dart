
import '../../domain/entities/physician.dart';

abstract class PhysicianState {}

class PhysicianInitial extends PhysicianState {}

class PhysicianLoading extends PhysicianState {}

class PhysicianDone extends PhysicianState {
  final List<Physician> physicians;

  PhysicianDone(this.physicians);
}