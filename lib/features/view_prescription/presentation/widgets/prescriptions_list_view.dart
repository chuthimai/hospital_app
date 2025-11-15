import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/prescription_cubit.dart';
import '../cubit/prescription_state.dart';
import 'prescription_card.dart';

class PrescriptionsListView extends StatefulWidget {
  const PrescriptionsListView({super.key});

  @override
  State<PrescriptionsListView> createState() => _PrescriptionsListViewState();
}

class _PrescriptionsListViewState extends State<PrescriptionsListView> {
  @override
  void initState() {
    super.initState();
    context.read<PrescriptionCubit>().getAllPrescriptions();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PrescriptionCubit, PrescriptionState>(
        builder: (context, state) {
      if (state is PrescriptionInitial) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      }

      if (state is PrescriptionGetAllFailure) {
        return const Center(
          child: Text("Có lỗi xảy ra"),
        );
      }
      final prescriptions = (state as PrescriptionGetAllSuccess).prescriptions;
      if (prescriptions.isEmpty) {
        return const Center(
          child: Text("Không có đơn thuốc nào"),
        );
      }

      return ListView.builder(
        itemCount: prescriptions.length,
        itemBuilder: (context, index) {
          final prescription = prescriptions[index];
          return PrescriptionCard(prescription);
        },
      );
    });
  }
}
