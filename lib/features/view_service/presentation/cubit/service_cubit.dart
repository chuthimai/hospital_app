
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/repositories/service_repository.dart';
import 'service_state.dart';

class ServiceCubit extends Cubit<ServiceState> {
  final ServiceRepository _repo;

  ServiceCubit(this._repo): super(ServiceInitial());

  Future<void> getAllIncompleteService() async {
    emit(ServiceInitial());
    try {
      final services = await _repo.getAllIncompleteServices();
      services.sort();
      emit(ServiceGetSuccess(services));
    } catch (e) {
      emit(ServiceGetFailure(e.toString()));
    }
  }
}