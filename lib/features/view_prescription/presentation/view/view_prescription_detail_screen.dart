import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/datasources/prescription_local_data_source.dart';
import '../../data/datasources/prescription_remote_data_source.dart';
import '../../data/repositories/pescription_repository_impl.dart';
import '../../domain/entities/prescription.dart';
import '../../domain/repositories/pescription_repository.dart';
import '../cubit/prescription_cubit.dart';
import '../widgets/prescription_detail_view.dart';

class ViewPrescriptionDetailScreen extends StatelessWidget {
  final Prescription prescription;

  ViewPrescriptionDetailScreen(this.prescription, {super.key});

  final PrescriptionRepository _repo = PrescriptionRepositoryImpl(
    localDataSource: PrescriptionLocalDataSourceImpl(),
    remoteDataSource: PrescriptionRemoteDataSourceImpl(),
  );

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => PrescriptionCubit(_repo)),
      ],
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Đơn thuốc chi tiết"),
        ),
        body: SafeArea(
          child: PrescriptionDetailView(prescription),
        ),
      ),
    );
  }
}
