import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:taxiapp/domain/state/theme_state/theme_cubit.dart';
import 'package:taxiapp/domain/state/theme_state/theme_state.dart';
import 'package:taxiapp/router/app_router.dart';

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final _router = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [BlocProvider(create: (ctx) => ThemeCubit())],
      child: BlocBuilder<ThemeCubit, ThemeState>(
        builder: (context, themeState) => MaterialApp.router(
          debugShowCheckedModeBanner: false,
          title: 'TaxiApp',
          theme: ThemeData(
            colorScheme: themeState is DarkThemeState
                ? ColorScheme.dark(
                    primary: themeState.primary,
                    secondary: themeState.primary,
                    surface: themeState.background,
                    surfaceContainer: themeState.card,
                    surfaceBright: themeState.cardBorder,)
                : ColorScheme.light(
                    primary: themeState.primary,
                    secondary: themeState.primary,
                    surface: themeState.background,
                    surfaceContainer: themeState.card,
                    surfaceBright: themeState.cardBorder),
            iconButtonTheme: IconButtonThemeData(
                style: IconButton.styleFrom(
                    backgroundColor: themeState.card,
                    foregroundColor: themeState.primary,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                        side: BorderSide(
                            width: 1, color: themeState.cardBorder)))),
            useMaterial3: true,
          ),
          routerConfig: _router.config(),
        ),
      ),
    );
  }
}
