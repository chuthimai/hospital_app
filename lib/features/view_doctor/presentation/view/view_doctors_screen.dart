import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../appointment/presentation/cubit/specialty_cubit.dart';
import '../../data/datasource/physician_local_data_source.dart';
import '../../data/datasource/physician_remote_data_source.dart';
import '../../data/datasource/specialty_local_data_source.dart';
import '../../data/datasource/specialty_remote_data_source.dart';
import '../../data/repositories/physician_repository_impl.dart';
import '../../data/repositories/specialty_repository_impl.dart';
import '../../domain/repositories/physician_repository.dart';
import '../../domain/repositories/specialty_repository.dart';
import '../cubit/physician_cubit.dart';
import '../widgets/doctors_view.dart';

class ViewDoctorsScreen extends StatelessWidget {
  ViewDoctorsScreen({super.key});

  final PhysicianRepository _physicianRepo = PhysicianRepositoryImpl(
      localDataSource: PhysicianLocalDataSourceImpl(),
      remoteDataSource: PhysicianRemoteDataSourceImpl());

  final SpecialtyRepository _specialtyRepo = SpecialtyRepositoryImpl(
      localDataSource: SpecialtyLocalDataSourceImpl(),
      remoteDataSource: SpecialtyRemoteDataSourceImpl());

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => PhysicianCubit(_physicianRepo)),
          BlocProvider(create: (context) => SpecialtyCubit(_specialtyRepo)),
        ],
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Danh sách bác sĩ'),
          ),
          body: SafeArea(
            child: Padding(
              padding: EdgeInsets.fromLTRB(24.sp, 8.sp, 24.sp, 16.sp),
              child: const DoctorsView(),
            )
          ),
        ));
  }
}
