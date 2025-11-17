import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hospital_app/features/view_medical_record/data/datasource/medical_record_local_data_source.dart';
import 'package:hospital_app/features/view_medical_record/data/datasource/medical_record_remote_data_source.dart';
import 'package:hospital_app/features/view_medical_record/data/repositories/medical_record_repository_impl.dart';
import 'package:hospital_app/features/view_medical_record/domain/repositories/medical_record_repository.dart';
import 'package:hospital_app/features/view_medical_record/presentation/cubit/patient_record_cubit.dart';
import 'package:hospital_app/features/view_medical_record/presentation/widgets/medical_records_list_view.dart';

import '../cubit/patient_record_state.dart';

class ViewMedicalRecordsScreen extends StatelessWidget {
  ViewMedicalRecordsScreen({super.key});

  final MedicalRecordRepository _repo = MedicalRecordRepositoryImpl(
    localDataSource: MedicalRecordLocalDataSourceImpl(),
    remoteDataSource: MedicalRecordRemoteDataSourceImpl(),
  );

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => PatientRecordCubit(_repo)),
      ],
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Hồ sơ sức khoẻ'),
        ),
        body: SafeArea(
          child: BlocBuilder<PatientRecordCubit, PatientRecordState>(
            builder: (context, state) {
              return RefreshIndicator(
                  onRefresh: () async {
                    context.read<PatientRecordCubit>().getAllPatientRecords();
                  },
                  child: const MedicalRecordListView()
              );
            }
          )
        ),
      ),
    );
  }
}
