import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:hospital_app/features/view_medical_record/presentation/cubit/patient_record_cubit.dart';
import 'package:hospital_app/features/view_medical_record/presentation/cubit/patient_record_state.dart';
import 'package:hospital_app/share/utils/date_formatter.dart';

import '../../domain/entities/enum/record_status.dart';

class MedicalRecordListView extends StatefulWidget {
  const MedicalRecordListView({super.key});

  @override
  State<MedicalRecordListView> createState() => _MedicalRecordListViewState();
}

class _MedicalRecordListViewState extends State<MedicalRecordListView> {
  @override
  void initState() {
    super.initState();
    context.read<PatientRecordCubit>().getAllPatientRecords();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PatientRecordCubit, PatientRecordState>(
        builder: (context, state) {
      if (state is PatientRecordInitial) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      }

      if (state is PatientRecordGetAllFailure) {
        return Center(
          child: Text(state.message),
        );
      }

      final patientRecords = (state as PatientRecordGetAllSuccess).patientRecords;
      if (patientRecords.isEmpty) {
        return const Center(
          child: Text("Không có bệnh án"),
        );
      }

      return ListView.builder(
        itemCount: patientRecords.length,
        itemBuilder: (context, index) {
          final patientRecord = patientRecords[index];
          return Card(
            key: ValueKey(patientRecord.id),
            color: patientRecord.status == RecordStatus.complete
                ? Theme.of(context).disabledColor
                : Theme.of(context).cardColor,
            margin: EdgeInsets.symmetric(horizontal: 12.sp, vertical: 6.sp),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.sp),
            ),
            child: InkWell(
              child: ListTile(
                title: Text(
                  "Hồ sơ #${patientRecord.id}",
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                    "Ngày đến khám: ${DateFormatter.format(patientRecord.createdTime)}"),
                trailing: const Icon(Icons.arrow_forward_ios),
              ),
              onTap: () => context.push(
                '/medical-records/${patientRecord.id}',
                extra: patientRecord,
              ),
            ),
          );
        },
      );
    });
  }
}
