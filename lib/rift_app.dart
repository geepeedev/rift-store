import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:rift_store/feature/authentication/presentation/cubit/authentication_cubit.dart';
import 'package:rift_store/feature/authentication/presentation/cubit/onboarding_cubit.dart';
import 'package:rift_store/feature/authentication/presentation/screens/login.dart';
// import 'package:rift_store/feature/authentication/presentation/screens/onboarding.dart';
// import 'package:rift_store/utils/shared/widgets/rift_text.dart';
// import 'package:rift_store/utils/shared/widgets/rift_text.dart';
import 'package:rift_store/utils/theme/theme.dart';

class RiftApp extends StatelessWidget {
  const RiftApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => OnboardingCubit(),
      child: MaterialApp(
        theme: TAppTheme.lightTheme,
        darkTheme: TAppTheme.darkTheme,
        themeMode: ThemeMode.system,
        debugShowCheckedModeBanner: false,
        home: const LoginScreen(),
      ),
    );
  }
}
