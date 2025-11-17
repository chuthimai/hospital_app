import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hospital_app/features/view_prescription/presentation/widgets/prescriptions_list_view.dart';

import '../../data/datasources/prescription_local_data_source.dart';
import '../../data/datasources/prescription_remote_data_source.dart';
import '../../data/repositories/pescription_repository_impl.dart';
import '../../domain/repositories/pescription_repository.dart';
import '../cubit/prescription_cubit.dart';
import '../cubit/prescription_state.dart';

class ViewPrescriptionsScreen extends StatelessWidget {
  ViewPrescriptionsScreen({super.key});

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
          title: const Text('Đơn thuốc'),
        ),
        body: SafeArea(
          child: BlocBuilder<PrescriptionCubit, PrescriptionState>(
              builder: (context, state) {
            return RefreshIndicator(
              onRefresh: () async {
                context.read<PrescriptionCubit>().getAllPrescriptions();
              },
              child: const PrescriptionsListView(),
            );
          }),
        ),
      ),
    );
  }
}
