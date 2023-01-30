import 'package:flutter/material.dart';
import 'package:pokedex/themes/theme_colors.dart';

ThemeData myTheme = ThemeData(
  primaryColor: ThemeColors.primaryColor,
  colorScheme: ColorScheme.fromSwatch(
    primarySwatch: ThemeColors.primaryColor,
    brightness: Brightness.light,
  ),
  brightness: Brightness.light,
  appBarTheme: const AppBarTheme(
    iconTheme: IconThemeData(color: ThemeColors.textColor),
    elevation: 0,
    backgroundColor: Colors.transparent,
  ),
  fontFamily: 'Nunito',
  textTheme: const TextTheme(
    labelLarge: TextStyle(
      color: ThemeColors.textButtonColor,
    ),
    bodyMedium: TextStyle(
      fontSize: 16.0,
      color: ThemeColors.textColor,
    ),
    bodyLarge: TextStyle(
      fontSize: 18.0,
      fontWeight: FontWeight.bold,
      color: ThemeColors.textColor,
    ),
    bodySmall: TextStyle(
      color: ThemeColors.textButtonColor,
      fontSize: 14.0,
      fontWeight: FontWeight.w400,
    ),
    titleLarge: TextStyle(
      color: ThemeColors.textColor,
    ),
    titleMedium: TextStyle(
      color: ThemeColors.textColor,
    ),
    titleSmall: TextStyle(
      color: ThemeColors.textColor,
    ),
  ),
  iconTheme: const IconThemeData(
    color: ThemeColors.iconeColor,
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: ThemeColors.buttonColor,
      elevation: 15,
    ),
  ),
  cardTheme: const CardTheme(
    color: ThemeColors.buttonColor,
  ),
  shadowColor: ThemeColors.buttonColor,
  cardColor: ThemeColors.boxColor,
  buttonTheme: const ButtonThemeData(
    buttonColor: ThemeColors.buttonColor,
  ),
);
