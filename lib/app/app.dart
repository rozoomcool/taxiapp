import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:taxiapp/domain/state/theme_state/theme_cubit.dart';
import 'package:taxiapp/domain/state/theme_state/theme_state.dart';
import 'package:taxiapp/router/app_router.dart';
import 'package:taxiapp/utils/app_colors.dart';

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final _router = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (ctx) => ThemeCubit())
      ],
      child: BlocBuilder<ThemeCubit, ThemeState>(
        builder: (context, themeState) => MaterialApp.router(
          debugShowCheckedModeBanner: false,
          title: 'TaxiApp',
          theme: ThemeData(
            colorScheme: const ColorScheme.dark(
                brightness: Brightness.dark,
                secondary: AppColorsDark.primary,
                surface: AppColorsDark.background,
                surfaceContainer: AppColorsDark.card
        
              ),
            useMaterial3: true,
          ),
          routerConfig: _router.config(),
        ),
      ),
    );
  }
}