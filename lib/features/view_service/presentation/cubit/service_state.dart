import '../../domain/entities/service.dart';

abstract class ServiceState {}

class ServiceInitial extends ServiceState {}

class ServiceGetSuccess extends ServiceState {
  final List<Service> services;

  ServiceGetSuccess(this.services);
}

class ServiceGetFailure extends ServiceState {
  final String message;
  ServiceGetFailure(String message)
      : message = message.replaceFirst("Exception: ", "");
}