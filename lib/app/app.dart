import 'package:chguburoapp/domain/state/auth/auth_cubit.dart';
import 'package:chguburoapp/domain/state/theme/theme_cubit.dart';
import 'package:chguburoapp/router/app_router.dart';
import 'package:chguburoapp/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/app_colors.dart';

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => AuthCubit()..init()),
        BlocProvider(create: (context) => ThemeCubit())
      ],
      child: BlocBuilder<AuthCubit, AuthState>(
        builder: (context, state) {
          final AppRouter appRouter = AppRouter(state);

          return BlocBuilder<ThemeCubit, ThemeState>(
            builder: (context, state) {
              return MaterialApp.router(
                debugShowCheckedModeBanner: false,
                themeMode: state is LightModeThemeState
                    ? ThemeMode.light
                    : ThemeMode.dark,
                theme: customTheme(context, Brightness.light),
                darkTheme: customTheme(context, Brightness.dark),
                routerConfig: appRouter.config(),
              );
            },
          );
        },
      ),
    );
  }
}
