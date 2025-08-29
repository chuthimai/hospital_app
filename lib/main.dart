import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hospital_app/features/auth/data/datasources/auth_local_data_source.dart';
import 'package:hospital_app/features/auth/data/datasources/auth_remote_data_source.dart';
import 'package:hospital_app/features/auth/data/repositories/auth_repository_impl.dart';
import 'package:hospital_app/features/auth/domain/repositories/auth_repository.dart';
import 'package:hospital_app/features/auth/presentation/cubit/auth_cubit.dart';
import 'package:hospital_app/features/setting/data/datasources/theme_local_data_source.dart';
import 'package:hospital_app/features/setting/data/repositories/theme_repository_impl.dart';
import 'package:hospital_app/features/setting/domain/repositories/theme_repository.dart';
import 'package:hospital_app/features/setting/presentation/cubit/theme_cubit.dart';
import 'package:hospital_app/share/navigation/router.dart';
import 'share/themes/app_theme.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);

  // Auth
  final AuthRepository authRepository = AuthRepositoryImpl(
    remoteDataSource: AuthRemoteDataSourceImpl(),
    localDataSource: AuthLocalDataSourceImpl(),
  );

  // Theme
  final ThemeRepository themeRepository = ThemeRepositoryImpl(
    dataSource: ThemeLocalDataSourceImpl(),
  );

  // Bọc State toàn app
  runApp(MultiBlocProvider(
    providers: [
      BlocProvider(
        create: (context) => AuthCubit(authRepository)..getCurrentUser(),
      ),
      BlocProvider(
        create: (context) => ThemeCubit(themeRepository)..getCurrentTheme(),
      ),
    ],
    child: ScreenUtilInit(
      designSize: const Size(430, 932), // màn hình iphone 14 pro
      minTextAdapt: true,
      builder: (context, child) {
        return const MyApp();
      },
    ),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final themeMode = context.watch<ThemeCubit>().state;

    return MaterialApp.router(
      title: "Ứng dụng viện A",
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
      themeMode: themeMode,
      routerConfig: router,
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en', 'US'),
        Locale('vi', 'VN'),
      ],
    );
  }
}
