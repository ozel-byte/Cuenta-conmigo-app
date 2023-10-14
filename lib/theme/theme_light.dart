import 'package:flutter/material.dart';

class ThemeLight {
   static ThemeData themeOne = ThemeData(
      useMaterial3: true,
     
      colorScheme: const ColorScheme(
        brightness: Brightness.light,
        primary: Color(0xFF805600),
        onPrimary: Color(0xFFFFFFFF),
        primaryContainer: Color(0xFFFFDDAF),
        onPrimaryContainer: Color(0xFF281800),
        secondary: Color(0xFF6E5B40),
        onSecondary: Color(0xFFFFFFFF),
        secondaryContainer: Color(0xFFF9DFBB),
        onSecondaryContainer: Color(0xFF261904),
        tertiary: Color(0xFF506441),
        onTertiary: Color(0xFFFFFFFF),
        tertiaryContainer: Color(0xFFD2EABD),
        onTertiaryContainer: Color(0xFF0E2005),
        error: Color(0xFFBA1A1A),
        errorContainer: Color(0xFFFFDAD6),
        onError: Color(0xFFFFFFFF),
        onErrorContainer: Color(0xFF410002),
        background: Color(0xFFFFFBFF),
        onBackground: Color(0xFF1F1B16),
        surface: Color(0xFFFFFBFF),
        onSurface: Color(0xFF1F1B16),
        surfaceVariant: Color(0xFFEFE0CF),
        onSurfaceVariant: Color(0xFF4F4539),
        outline: Color(0xFF817567),
        onInverseSurface: Color(0xFFF9EFE7),
        inverseSurface: Color(0xFF34302A),
        inversePrimary: Color(0xFFFDBA4A),
        shadow: Color(0xFF000000),
        surfaceTint: Color(0xFF805600),
        outlineVariant: Color(0xFFD2C4B4),
        scrim: Color(0xFF000000),
      ));
}
