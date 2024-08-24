import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

abstract class ThemeState extends Equatable {
  abstract final Color primary;
  abstract final Color background;
  abstract final Color cardBorder;
  abstract final Color card;
  abstract final Color grey;
}

@immutable
class DarkThemeState extends ThemeState {

  @override
  final Color primary = const Color(0xFFEBE442);

  @override
  final Color background = const Color(0xFF1C1C1C);

  @override
  final Color cardBorder = const Color(0xFF424242);

  @override
  final Color card = const Color(0xFF2C2B2B);

  @override
  final Color grey = const Color(0xFFC8C8C8);


  @override
  List<Object?> get props => [
    primary, background, cardBorder, card
  ];

}

@immutable
class LightThemeState extends ThemeState {

  @override
  final Color primary = const Color(0xFF6196FF);

  @override
  final Color background = const Color(0xFFFFFFFF);

  @override
  final Color cardBorder = const Color(0xFFC6C6C6);

  @override
  final Color card = const Color(0xFFFCFCFC);

  @override
  final Color grey = const Color(0xFFC8C8C8);


  @override
  List<Object?> get props => [
    primary, background, cardBorder, card
  ];

}