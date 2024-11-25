import 'package:flutter/material.dart';
import 'colours.dart';

class AppTheme {
  //ToDo: Color
  static Color get error => AppColors.sangoRed; // Error color
  static Color get primary => AppColors.purpleShade; // Primary color
  static Color get lightBackground =>
      AppColors.white; // Background color for light theme
  static Color get hintTextColor => AppColors.argent; // Hint text color
  static Color get labelTextColor =>
      AppColors.verifiedBlack; // Label text color
  static Color get white => AppColors.white; // White color
  static Color get black => AppColors.erieBlack; // Black
  static Color get borderTextFieldBorderColor => AppColors.coldMorning;
  static Color get chosenTextFieldBorderColor => AppColors.purpleShade;

  //ToDo: TextStyle
  static TextStyle get appHintStyle => TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w700,
      color: hintTextColor,
      letterSpacing: 0.60);

  static TextStyle get whiteMediumStyle => TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w500,
      color: white,
      letterSpacing: 0.60);

  //ToDo: InputDecoration
  static InputDecoration get searchInputDecoration => InputDecoration(
      suffixIcon: const Icon(Icons.search), // Leading search icon
      hintText: 'Hey, what are you looking for?',
      hintStyle: AppTheme.appHintStyle,
      contentPadding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 25.0),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(40.0),
        borderSide: BorderSide(color: AppTheme.borderTextFieldBorderColor),
      ),
      // focusedBorder: OutlineInputBorder(
      //   borderRadius: BorderRadius.circular(40.0),
      //   borderSide: BorderSide(color: AppTheme.chosenTextFieldBorderColor, width: 2.0),
      // ),
    );

  //ToDo: Theme
  static final ThemeData lightTheme = ThemeData(
    primaryColor: primary,
    scaffoldBackgroundColor: white,
    brightness: Brightness.light,
    fontFamily: 'AbhayaLibre',

    // Customize Slider theme
    sliderTheme: SliderThemeData(
      overlayShape: SliderComponentShape.noOverlay,
    ),

    // Customize Icon theme
    iconTheme: IconThemeData(
      color: white, // Set default color for icons
      size: 24, // Default icon size
    ),

    // Customize Input Decorations
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: AppColors.chefsHat,
      contentPadding: const EdgeInsets.all(30),
      hintStyle: appHintStyle,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30),
        borderSide: BorderSide.none,
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30),
        borderSide: BorderSide.none,
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30),
        borderSide: BorderSide.none,
      ),
    ),

    // Customize Elevated Button
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: primary,
        elevation: 0,
        textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
    ),
  );
}
