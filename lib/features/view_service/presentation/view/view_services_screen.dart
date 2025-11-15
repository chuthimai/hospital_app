import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hospital_app/features/view_service/presentation/view/service_list_screen.dart';

import '../../data/datasource/service_local_data_source.dart';
import '../../data/datasource/service_remote_data_source.dart';
import '../../data/repositories/service_repository_impl.dart';
import '../../domain/repositories/service_repository.dart';
import '../cubit/service_cubit.dart';
import '../widgets/services_view.dart';

class ViewServicesScreen extends StatelessWidget {
  ViewServicesScreen({super.key});

  final ServiceRepository repo = ServiceRepositoryImpl(
    localDataSource: ServiceLocalDataSourceImpl(),
    remoteDataSource: ServiceRemoteDataSourceImpl(),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dịch vụ cần làm'),
        actions: [
          IconButton(
            onPressed: () => {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (ctx) => ServiceListScreen()))
            },
            icon: const Icon(Icons.add),
          ),
        ],
      ),
      body: SafeArea(
        child: MultiBlocProvider(
          providers: [
            BlocProvider(create: (context) => ServiceCubit(repo)),
          ],
          child: const ServicesView(),
        ),
      ),
    );
  }
}
