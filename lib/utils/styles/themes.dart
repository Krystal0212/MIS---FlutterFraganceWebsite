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
      fontSize: 14,
      fontWeight: FontWeight.w700,
      color: hintTextColor,
      letterSpacing: 0.60);

  static TextStyle get whiteMediumStyle => TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: white,
      letterSpacing: 0.60);

  static TextStyle get blackMediumStyle =>
      TextStyle(color: black, fontSize: 11, fontWeight: FontWeight.w600);

  static TextStyle get blackExtraBoldStyle => const TextStyle(
      color: AppColors.lacqueredLiquorice,
      fontSize: 17,
      fontWeight: FontWeight.w800,
      letterSpacing: 0.60);

  static TextStyle get sliverDefaultStyle => TextStyle(
      fontSize: 35,
      fontWeight: FontWeight.bold,
      color: AppTheme.black
    );

  static TextStyle get sliverButtonDefaultStyle => TextStyle(
      fontSize: 20,
      color: AppTheme.black
  );

  static TextStyle get dangerTextStyle => const TextStyle(
      fontSize: 35,
      fontWeight: FontWeight.bold,
      color: AppColors.bethlehemRed
  );

  //ToDo: InputDecoration
  static InputDecoration get searchInputDecoration => InputDecoration(
        suffixIcon: const Icon(Icons.search), // Leading search icon
        hintText: 'Hey, what are you looking for?',
        hintStyle: AppTheme.appHintStyle,
        contentPadding:
            const EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
        filled: true,
        fillColor: AppTheme.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.0),
          borderSide: BorderSide(color: AppTheme.borderTextFieldBorderColor),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.0),
          borderSide: BorderSide(
              color: AppTheme.chosenTextFieldBorderColor, width: 2.0),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.0),
          borderSide: BorderSide(color: AppTheme.borderTextFieldBorderColor),
        ),
      );

  //ToDo: ButtonStyle
  static ButtonStyle get navigationUserSectionButtonStyle =>
      ElevatedButton.styleFrom(
        padding: EdgeInsets.zero,
        backgroundColor: Colors.transparent,
        elevation: 0,
        textStyle: blackMediumStyle,
        splashFactory: NoSplash.splashFactory,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        shadowColor: Colors.transparent,
        surfaceTintColor: Colors.transparent,
        iconColor: black,
      );

  static ButtonStyle get navigationProductSectionButtonStyle =>
      ElevatedButton.styleFrom(
        padding: EdgeInsets.zero,
        backgroundColor: Colors.transparent,
        elevation: 0,
        textStyle: blackExtraBoldStyle,
        splashFactory: NoSplash.splashFactory,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        shadowColor: Colors.transparent,
        surfaceTintColor: Colors.transparent,
        iconColor: black,
      );

  static ButtonStyle get navigationHotDealSectionButtonStyle =>
      ElevatedButton.styleFrom(
        padding: EdgeInsets.zero,
        backgroundColor: Colors.transparent,
        elevation: 0,
        textStyle: blackMediumStyle,
        splashFactory: NoSplash.splashFactory,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        shadowColor: Colors.transparent,
        surfaceTintColor: Colors.transparent,
        iconColor: black,
      );

  static ButtonStyle get sliverTextButtonStyle =>
      TextButton.styleFrom(
        backgroundColor: AppTheme.white,
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: AppTheme.black,
            width: 1
          ),
          borderRadius: BorderRadius.circular(10)
        )
      );

  static ButtonStyle get defaultStyle =>
      TextButton.styleFrom(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15)
        ),
        side: BorderSide(
          color: AppTheme.black,
          width: 1,
        ),
        foregroundColor: AppColors.endindNavyBlue,
        backgroundColor: AppTheme.primary.withOpacity(0.75),
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
      fillColor: AppTheme.white,
      contentPadding: const EdgeInsets.all(30),
      hintStyle: appHintStyle,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30.0),
        borderSide:
            BorderSide(color: AppTheme.borderTextFieldBorderColor, width: 10.0),
      ),
    ),

    // Customize Elevated Button
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: primary,
        elevation: 0,
        foregroundColor: AppColors.endindNavyBlue,
        textStyle:
            TextStyle(color: black, fontSize: 14, fontWeight: FontWeight.bold),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
    ),
  );
}
