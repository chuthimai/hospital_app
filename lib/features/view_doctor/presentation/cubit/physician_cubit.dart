import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/repositories/physician_repository.dart';
import 'physician_state.dart';

class PhysicianCubit extends Cubit<PhysicianState> {
  final PhysicianRepository repo;

  PhysicianCubit(this.repo): super(PhysicianInitial());

  Future<void> getAllPhysiciansInSpecialty(int medicalSpecialtyId) async {
    emit(PhysicianInitial());
    final physicians = await repo.getAllPhysiciansInSpecialty(medicalSpecialtyId);
    emit(PhysicianDone(physicians));
  }

  void setInit() {
    emit(PhysicianInitial());
  }
}