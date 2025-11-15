import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hospital_app/features/view_service/presentation/cubit/service_state.dart';

import '../cubit/service_cubit.dart';
import 'service_card.dart';

class ServicesView extends StatefulWidget {
  const ServicesView({super.key});

  @override
  State<ServicesView> createState() => _ServicesViewState();
}

class _ServicesViewState extends State<ServicesView> {
  @override
  void initState() {
    super.initState();
    context.read<ServiceCubit>().getAllIncompleteService();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ServiceCubit, ServiceState>(builder: (context, state) {
      if (state is ServiceInitial) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      }
      if (state is ServiceGetFailure) {
        return Center(
          child: Text(state.message),
        );
      }

      final services = (state as ServiceGetSuccess).services;
      if (services.isEmpty) {
        return const Center(
          child: Text("Không có dịch vụ nào cần làm"),
        );
      }
      return Container(
        margin: EdgeInsets.symmetric(horizontal: 12.sp, vertical: 6.sp),
        child: ListView.builder(
          itemCount: services.length,
          itemBuilder: (context, index) {
            final service = services[index];
            return ServiceCard(
              service,
              key: Key(service.id.toString()),
            );
          },
        ),
      );
    });
  }
}
