import 'package:flutter/material.dart';
import 'package:taxiapp/router/app_router.dart';

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final _router = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'TaxiApp',
      theme: ThemeData(
        colorScheme: const ColorScheme.dark(primary: Color(0xFFEBE442)),
        useMaterial3: true,
        brightness: Brightness.dark
      ),
      routerConfig: _router.config(),
    );
  }
}