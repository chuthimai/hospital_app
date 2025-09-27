import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:hospital_app/features/appointment/presentation/cubit/appointment_state.dart';
import 'package:hospital_app/features/appointment/presentation/cubit/specialty_cubit.dart';
import 'package:hospital_app/features/view_doctor/data/datasource/physician_local_data_source.dart';
import 'package:hospital_app/features/view_doctor/data/datasource/physician_remote_data_source.dart';
import 'package:hospital_app/features/view_doctor/data/datasource/specialty_local_data_source.dart';
import 'package:hospital_app/features/view_doctor/data/datasource/specialty_remote_data_source.dart';
import 'package:hospital_app/features/view_doctor/data/repositories/physician_repository_impl.dart';
import 'package:hospital_app/features/view_doctor/data/repositories/specialty_repository_impl.dart';
import 'package:hospital_app/features/view_doctor/domain/entities/physician.dart';
import 'package:hospital_app/features/view_doctor/domain/repositories/physician_repository.dart';
import 'package:hospital_app/features/view_doctor/domain/repositories/specialty_repository.dart';
import 'package:hospital_app/features/view_doctor/presentation/cubit/physician_cubit.dart';
import 'package:hospital_app/share/widgets/app_snack_bar.dart';

import '../../data/datasources/appointment_local_data_source.dart';
import '../../data/datasources/appointment_remote_data_source.dart';
import '../../data/datasources/shift_local_data_source.dart';
import '../../data/datasources/shift_remote_data_source.dart';
import '../../data/datasources/work_schedule_local_data_source.dart';
import '../../data/datasources/work_schedule_remote_data_source.dart';
import '../../data/repositories/appointment_repository_impl.dart';
import '../../data/repositories/shift_repository_impl.dart';
import '../../data/repositories/work_schedule_repository_impl.dart';
import '../../domain/repositories/appointment_repository.dart';
import '../../domain/repositories/shift_repository.dart';
import '../../domain/repositories/work_schedule_repository.dart';
import '../cubit/appointment_cubit.dart';
import '../cubit/shift_cubit.dart';
import '../cubit/work_schedule_cubit.dart';
import '../widgets/booking_appointment_view.dart';

class BookingAppointmentScreen extends StatelessWidget {
  final Physician? doctor;
  BookingAppointmentScreen({super.key, this.doctor});

  final ShiftRepository _shiftRepo = ShiftRepositoryImpl(
      localDataSource: ShiftLocalDataSourceImpl(),
      remoteDataSource: ShiftRemoteDataSourceImpl());

  final WorkScheduleRepository _workScheduleRepo = WorkScheduleRepositoryImpl(
      localDataSource: WorkScheduleLocalDataSourceImpl(),
      remoteDataSource: WorkScheduleRemoteDataSourceImpl(),
  );

  final AppointmentRepository _appointmentRepo = AppointmentRepositoryImpl(
      localDataSource: AppointmentLocalDataSourceImpl(),
      remoteDataSource: AppointmentRemoteDataSourceImpl());

  final SpecialtyRepository _specialtyRepo = SpecialtyRepositoryImpl(
      localDataSource: SpecialtyLocalDataSourceImpl(),
      remoteDataSource: SpecialtyRemoteDataSourceImpl());

  final PhysicianRepository _physicianRepo = PhysicianRepositoryImpl(
      localDataSource: PhysicianLocalDataSourceImpl(),
      remoteDataSource: PhysicianRemoteDataSourceImpl());


  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => AppointmentCubit(_appointmentRepo)),
        BlocProvider(create: (context) => ShiftCubit(_shiftRepo)),
        BlocProvider(create: (context) => WorkScheduleCubit(_workScheduleRepo)),
        BlocProvider(create: (context) => SpecialtyCubit(_specialtyRepo)),
        BlocProvider(create: (context) => PhysicianCubit(_physicianRepo)),
      ],
      child: BlocListener<AppointmentCubit, AppointmentState>(
        listener: (context, state) {
          if (state is AppointmentCreateSuccess) {
            AppSnackBar.success(context, "Tạo cuộc hẹn thành công");
            return;
          }
          if (state is AppointmentCreateFailure) {
            AppSnackBar.error(context, state.message);
            return;
          }
        },
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Đặt lịch khám'),
            actions: [
              IconButton(
                onPressed: () => context.push("/appointments-history"),
                icon: const Icon(Icons.list),
              ),
            ],
          ),
          body: SafeArea(
            child: Padding(
              padding: EdgeInsets.fromLTRB(16.sp, 8.sp, 16.sp, 16.sp),
              child: BookingAppointmentView(
                doctor: doctor,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
