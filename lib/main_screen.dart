import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:hospital_app/features/auth/presentation/cubit/auth_cubit.dart';
import 'package:hospital_app/features/auth/presentation/cubit/auth_state.dart';
import 'package:hospital_app/splash_screen.dart';


class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthCubit, AuthState>(
      listenWhen: (previous, current) =>
      current is AuthSuccess || current is AuthInitial,
      listener: (context, state) {
        if (state is AuthSuccess) {
          context.go("/home");
        } else if (state is AuthInitial) {
          context.go("/login");
        }
      },
      child: const SplashScreen(),
    );
  }
}
