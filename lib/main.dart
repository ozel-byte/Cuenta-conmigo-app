import 'package:cicla/route.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Cuenta conmigo',
      initialRoute: AppRoute.initialRoute,
      routes: AppRoute.routes,
      theme: ThemeData(
          useMaterial3: true,
          colorScheme: const ColorScheme(
            brightness: Brightness.light,
            primary: Color(0xFF8F3E8F),
            onPrimary: Color(0xFFFFFFFF),
            primaryContainer: Color(0xFFFFD6F8),
            onPrimaryContainer: Color(0xFF37003A),
            secondary: Color(0xFF6D586A),
            onSecondary: Color(0xFFFFFFFF),
            secondaryContainer: Color(0xFFF6DBF0),
            onSecondaryContainer: Color(0xFF261625),
            tertiary: Color(0xFF825247),
            onTertiary: Color(0xFFFFFFFF),
            tertiaryContainer: Color(0xFFFFDAD2),
            onTertiaryContainer: Color(0xFF331109),
            error: Color(0xFFBA1A1A),
            errorContainer: Color(0xFFFFDAD6),
            onError: Color(0xFFFFFFFF),
            onErrorContainer: Color(0xFF410002),
            background: Color(0xFFFFFBFF),
            onBackground: Color(0xFF1E1A1D),
            surface: Color(0xFFFFFBFF),
            onSurface: Color(0xFF1E1A1D),
            surfaceVariant: Color(0xFFEDDEE8),
            onSurfaceVariant: Color(0xFF4E444B),
            outline: Color(0xFF7F747C),
            onInverseSurface: Color(0xFFF8EEF2),
            inverseSurface: Color(0xFF342F32),
            inversePrimary: Color(0xFFFFA9FA),
            shadow: Color(0xFF000000),
            surfaceTint: Color(0xFF8F3E8F),
            outlineVariant: Color(0xFFD1C3CC),
            scrim: Color(0xFF000000),
          )),
    );
  }
}
