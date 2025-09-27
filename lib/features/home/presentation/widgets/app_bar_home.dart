import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:hospital_app/features/auth/presentation/cubit/auth_cubit.dart';
import 'package:hospital_app/features/auth/presentation/cubit/auth_state.dart';
import 'package:hospital_app/features/notification/presentation/cubit/dot_notification_cubit.dart';
import 'package:hospital_app/features/notification/presentation/cubit/dot_notification_state.dart';
import 'package:hospital_app/share/constants/app_default.dart';

class AppBarHome extends StatefulWidget {
  const AppBarHome({super.key});

  @override
  State<AppBarHome> createState() => _AppBarHomeState();
}

class _AppBarHomeState extends State<AppBarHome> {
  @override
  void initState() {
    super.initState();
    context.read<DotNotificationCubit>().checkUnread();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Row(
      children: [
        InkWell(
          onTap: () => {context.push("/profile")},
          child:
              BlocBuilder<AuthCubit, AuthState>(builder: (context, authState) {
            if (authState is! AuthSuccess) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            final user = authState.user;

            return CircleAvatar(
              backgroundColor: Theme.of(context).cardColor,
              backgroundImage: user.photo == null
                  ? AssetImage(AppDefault.imageLink) as ImageProvider
                  : NetworkImage(user.photo!) as ImageProvider,
              radius: 24.sp,
            );
          }),
        ),
        BlocBuilder<AuthCubit, AuthState>(builder: (context, authState) {
          if (authState is! AuthSuccess) return const Center();
          final user = authState.user;

          return Expanded(
              child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.sp),
            child: Text(
              user.name,
              textAlign: TextAlign.start,
              style: Theme.of(context)
                  .textTheme
                  .titleLarge
                  ?.copyWith(color: Colors.white),
            ),
          ));
        }),
        BlocBuilder<DotNotificationCubit, DotNotificationState>(
          builder: (context, state) {
            bool hasUnread = false;
            if (state is DotNotificationUnreadState) {
              hasUnread = state.hasUnread;
            }
            return Stack(
              key: const Key("bell"),
              children: [
                IconButton(
                  onPressed: () => context.push("/notifications"),
                  icon: const Icon(Icons.notifications, color: Colors.white),
                ),
                if (hasUnread)
                  Positioned(
                    right: 16.sp,
                    top: 16.sp,
                    child: Container(
                      width: 8.sp,
                      height: 8.sp,
                      decoration: const BoxDecoration(
                        color: Colors.red,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
              ],
            );
          },
        )
      ],
    ));
  }
}
