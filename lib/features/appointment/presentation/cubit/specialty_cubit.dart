import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hospital_app/features/view_doctor/domain/repositories/specialty_repository.dart';

import 'specialty_state.dart';

class SpecialtyCubit extends Cubit<SpecialtyState> {
  final SpecialtyRepository repo;

  SpecialtyCubit(this.repo): super(SpecialtyInitial());
  Future<void> getAllSpecialties() async {
    emit(SpecialtyInitial());
    final specialties = await repo.getAllSpecialties();
    emit(SpecialtyDone(specialties));
  }
}