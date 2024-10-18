import 'package:chguburoapp/domain/state/auth/auth_cubit.dart';
import 'package:chguburoapp/domain/state/theme/theme_cubit.dart';
import 'package:chguburoapp/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

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
        BlocProvider(create: (context) => AuthCubit()),
        BlocProvider(create: (context) => ThemeCubit())
      ],
      child: BlocBuilder<AuthCubit, AuthState>(
        builder: (context, state) {
          final AppRouter appRouter = AppRouter(state);

          return BlocBuilder<ThemeCubit, ThemeState>(
            builder: (context, state) {
              return MaterialApp.router(
                debugShowCheckedModeBanner: false,
                themeMode:
                state is LightModeThemeState ? ThemeMode.light : ThemeMode.dark,
                theme: ThemeData(
                    colorScheme: ColorScheme.fromSeed(seedColor: Colors.cyan),
                    useMaterial3: true,
                    textTheme: GoogleFonts.montserratTextTheme().apply(
                      displayColor: Colors.white,
                      bodyColor: Colors.white,
                    ),
                    elevatedButtonTheme: ElevatedButtonThemeData(
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12))))),
                darkTheme: ThemeData(
                    textTheme: GoogleFonts.montserratTextTheme().apply(
                      displayColor: Colors.white,
                      bodyColor: Colors.white,
                    ),
                    colorScheme: ColorScheme.fromSeed(
                      brightness: Brightness.dark,
                      seedColor: Colors.cyan,
                    ),
                    useMaterial3: true,
                    elevatedButtonTheme: ElevatedButtonThemeData(
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12))))),
                routerConfig: appRouter.config(),
              );
            },
          );
        },
      ),
    );
  }
}
