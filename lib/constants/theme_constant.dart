import 'package:flutter/material.dart';

class ThemeConstant {
  static const Color disableColor = Color(0xFFB9B3B3);
  static final success = Color(0xFF3DAF35);
  static const ColorScheme lightScheme = ColorScheme(
    background: Color(0xFF9CF4BD),
    onBackground: Color(0xFFE8E6E6),
    primary: Color(0xFFFE2A43),
    onPrimary: Color(0xFFFFFFFF),
    secondary: Color(0xFF0099FF),
    onSecondary: Color(0xFF202020),
    surface: Color(0xFFFFFFFF),
    onSurface: Color(0xFF170103),
    error: Color(0xFFFE2A43),
    onError: Color(0xFFFFFFFF),
    brightness: Brightness.light,
  );

  static ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: lightScheme.surface,
    backgroundColor: lightScheme.surface,
    colorScheme: lightScheme,
    primaryColor: lightScheme.surface,
    textTheme: textTheme(),
    splashColor: Colors.transparent,
    appBarTheme: AppBarTheme(
      backgroundColor: lightScheme.background,
      elevation: 0.0,
      foregroundColor: lightScheme.onSurface,
      iconTheme: IconThemeData(color: lightScheme.onSurface),
      titleTextStyle: textTheme().headline5?.copyWith(color: lightScheme.onSurface, fontWeight: FontWeight.bold),
    ),
  );

  static TextTheme textTheme({List<String>? fonts}) {
    List<String> fontFamily = fonts ?? ["Montserrat", "Nokora"];
    final Color color = lightScheme.onSurface;
    final Color displayColor = Color(0xFF8B8081);
    TextTheme textTheme = Typography.material2018().white;
    return textTheme
        .copyWith(
          /// h1 => fontSize: 98
          headline1: TextStyle(
            fontSize: 98,
            fontWeight: FontWeight.w300,
            letterSpacing: -1.5,
            fontFamilyFallback: fontFamily,
          ),

          /// h2 => fontSize: 61
          headline2: TextStyle(
            fontSize: 61,
            fontWeight: FontWeight.w300,
            letterSpacing: -0.5,
            fontFamilyFallback: fontFamily,
          ),

          /// h3 => fontSize: 49
          headline3: TextStyle(
            fontSize: 49,
            fontWeight: FontWeight.w400,
            fontFamilyFallback: fontFamily,
          ),

          /// h4 => fontSize: 35
          headline4: TextStyle(
            fontSize: 35,
            fontWeight: FontWeight.w400,
            letterSpacing: 0.25,
            fontFamilyFallback: fontFamily,
          ),

          /// h5 => fontSize: 24
          headline5: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w400,
            fontFamilyFallback: fontFamily,
          ),

          /// h6 => fontSize: 20
          headline6: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
            letterSpacing: 0.15,
            fontFamilyFallback: fontFamily,
          ),

          /// s1 => fontSize: 16
          subtitle1: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
            letterSpacing: 0.15,
            fontFamilyFallback: fontFamily,
          ),

          /// s2 => fontSize: 14
          subtitle2: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            letterSpacing: 0.1,
            fontFamilyFallback: fontFamily,
          ),

          /// b1 => fontSize: 16
          bodyText1: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
            letterSpacing: 0.5,
            fontFamilyFallback: fontFamily,
          ),

          /// b2 => fontSize: 14
          bodyText2: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            letterSpacing: 0.25,
            fontFamilyFallback: fontFamily,
          ),

          /// button => fontSize: 14
          button: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            letterSpacing: 1.25,
            fontFamilyFallback: fontFamily,
          ),

          /// c => fontSize: 12
          caption: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            letterSpacing: 0.4,
            fontFamilyFallback: fontFamily,
          ),

          /// o => fontSize: 10
          overline: TextStyle(
            fontSize: 10,
            fontWeight: FontWeight.w400,
            letterSpacing: 0.4,
            fontFamilyFallback: fontFamily,
          ),
        )
        .apply(
          bodyColor: color,
          displayColor: displayColor,
        );
  }
}
