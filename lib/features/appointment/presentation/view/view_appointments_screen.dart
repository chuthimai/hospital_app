import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hospital_app/features/appointment/presentation/cubit/cancel_appointment_cubit.dart';
import '../../data/datasources/appointment_local_data_source.dart';
import '../../data/datasources/appointment_remote_data_source.dart';
import '../../data/repositories/appointment_repository_impl.dart';
import '../../domain/repositories/appointment_repository.dart';
import '../cubit/appointment_cubit.dart';
import '../widgets/appointments_view.dart';

class ViewAppointmentsScreen extends StatelessWidget {
  ViewAppointmentsScreen({super.key});

  final AppointmentRepository _appointmentRepo = AppointmentRepositoryImpl(
      localDataSource: AppointmentLocalDataSourceImpl(),
      remoteDataSource: AppointmentRemoteDataSourceImpl());

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => AppointmentCubit(_appointmentRepo)),
        BlocProvider(create: (context) => CancelAppointmentCubit(_appointmentRepo)),
      ],
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Lịch khám đã đặt'),
        ),
        body: const SafeArea(
            child: AppointmentsView()
        ),
      ),
    );
  }
}
