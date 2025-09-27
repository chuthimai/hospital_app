import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hospital_app/features/view_doctor/domain/entities/medical_specialty.dart';
import 'package:hospital_app/features/view_doctor/presentation/widgets/doctor_card.dart';

import '../../../appointment/presentation/cubit/specialty_cubit.dart';
import '../../../appointment/presentation/cubit/specialty_state.dart';
import '../cubit/physician_cubit.dart';
import '../cubit/physician_state.dart';

class DoctorsView extends StatefulWidget {
  const DoctorsView({super.key});

  @override
  State<DoctorsView> createState() => _DoctorsViewState();
}

class _DoctorsViewState extends State<DoctorsView> {
  MedicalSpecialty? _selectedSpecialty;

  @override
  void initState() {
    super.initState();
    context.read<SpecialtyCubit>().getAllSpecialties();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SpecialtyCubit, SpecialtyState>(
        builder: (context1, specialtyState) {
      if (specialtyState is! SpecialtyDone) {
        return const Center(child: CircularProgressIndicator());
      }
      return Column(
        children: [
          SizedBox(height: 8.sp),
          DropdownButtonFormField<MedicalSpecialty>(
            items: specialtyState.specialties
                .map((e) => DropdownMenuItem(
                    key: Key(e.id.toString()),
                    value: e,
                    child: Text(e.name)))
                .toList(),
            decoration: const InputDecoration(
              labelText: "Chọn chuyên khoa",
              border: OutlineInputBorder(),
            ),
            onChanged: (val) {
              setState(() {
                context.read<PhysicianCubit>().setInit();
                if (val != null) {
                  _selectedSpecialty = val as MedicalSpecialty?;
                  context
                      .read<PhysicianCubit>()
                      .getAllPhysiciansInSpecialty(val.id);
                }
              });
            },
          ),
          SizedBox(height: 8.sp),
          Expanded(
            child: BlocBuilder<PhysicianCubit, PhysicianState>(
                builder: (context, physicianState) {
              if (physicianState is PhysicianInitial) {
                return const Center(child: Text("Chọn chuyên khoa"));
              }
              if (physicianState is! PhysicianDone) {
                return const Center(child: CircularProgressIndicator());
              }
              if (physicianState.physicians.isEmpty) {
                return const Center(child: Text("Không tìm thấy kết quả"));
              }
              return ListView.builder(
                itemCount: physicianState.physicians.length,
                itemBuilder: (ctx, index) {
                  final doctor = physicianState.physicians[index];
                  doctor.setSpecialty(_selectedSpecialty!);
                  return DoctorCard(doctor);
                },
              );
            }),
          ),
        ],
      );
    });
  }
}
