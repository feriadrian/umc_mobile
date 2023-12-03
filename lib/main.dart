import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:umc_mobile/feature/auth/bloc/auth_bloc/auth_bloc.dart';
import 'package:umc_mobile/feature/auth/bloc/regis/regis_bloc.dart';
import 'package:umc_mobile/feature/onboarding/bloc/onboarding_bloc.dart';
import 'package:umc_mobile/theme/light_theme.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'feature/onboarding/page/onboarding_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AuthBloc(),
        ),
        BlocProvider(
          create: (context) => RegisBloc(),
        ),
        BlocProvider(
          create: (context) => OnboardingBloc(),
        ),
      ],
      child: MaterialApp(
        title: 'UMC Mobile',
        theme: theme(context),
        home: OnboardingView(),
      ),
    );
  }
}
