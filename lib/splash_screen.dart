import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:hospital_app/features/auth/presentation/cubit/auth_cubit.dart';
import 'package:hospital_app/features/auth/presentation/cubit/auth_state.dart';


class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthCubit, AuthState>(
      listenWhen: (previous, current) =>
      current is AuthSuccess || current is AuthInitial,
      listener: (context, state) {
        if (state is AuthSuccess) {
          context.pushReplacement("/home");
        } else if (state is AuthInitial) {
          context.pushReplacement("/login");
        }
      },
      child: const Scaffold(
        body: SafeArea(
          child: Center(
            child: CircularProgressIndicator(),
          ),
        ),
      ),
    );
  }
}
