import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hospital_app/features/appointment/presentation/cubit/shift_state.dart';

import '../../domain/repositories/shift_repository.dart';

class ShiftCubit extends Cubit<ShiftState> {
  final ShiftRepository repo;
  ShiftCubit(this.repo) : super(ShiftInitial());

  Future<void> getAllShifts() async {
    emit(ShiftInitial());
    final shifts = await repo.getAllShifts();
    emit(ShiftDone(shifts));
  }
}