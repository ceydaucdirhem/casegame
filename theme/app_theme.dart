import 'package:flutter/material.dart';

/// Oyunun renk paleti.
/// Siyah, koyu gri, bordo, krem ve koyu mor tonlari kullaniyoruz.
class AppColors {
  static const Color siyah = Color(0xFF0E0E11);
  static const Color koyuGri = Color(0xFF17171C);
  static const Color acikGri = Color(0xFF23232B);
  static const Color bordo = Color(0xFF7B1E2B);
  static const Color acikBordo = Color(0xFFA62D3E);
  static const Color krem = Color(0xFFE8DCC8);
  static const Color koyuMor = Color(0xFF3A2352);
  static const Color soluk = Color(0xFF8F8A99);
}

/// Uygulamanin genel gorunumu (tema).
class AppTheme {
  static ThemeData get koyuTema {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      scaffoldBackgroundColor: AppColors.siyah,
      colorScheme: const ColorScheme.dark(
        primary: AppColors.bordo,
        secondary: AppColors.koyuMor,
        surface: AppColors.koyuGri,
        onPrimary: AppColors.krem,
        onSecondary: AppColors.krem,
        onSurface: AppColors.krem,
      ),
      appBarTheme: const AppBarTheme(
        backgroundColor: AppColors.siyah,
        foregroundColor: AppColors.krem,
        elevation: 0,
        centerTitle: true,
        titleTextStyle: TextStyle(
          color: AppColors.krem,
          fontSize: 17,
          fontWeight: FontWeight.w600,
          letterSpacing: 2.0,
        ),
      ),
      textTheme: const TextTheme(
        titleLarge:
            TextStyle(color: AppColors.krem, fontWeight: FontWeight.bold),
        titleMedium:
            TextStyle(color: AppColors.krem, fontWeight: FontWeight.w600),
        bodyMedium: TextStyle(color: AppColors.krem, height: 1.5),
        bodySmall: TextStyle(color: AppColors.soluk, height: 1.4),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.bordo,
          foregroundColor: AppColors.krem,
          minimumSize: const Size(double.infinity, 54),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(6),
          ),
          textStyle: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            letterSpacing: 1.0,
          ),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: AppColors.krem,
          minimumSize: const Size(double.infinity, 54),
          side: const BorderSide(color: AppColors.acikGri, width: 1.4),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(6),
          ),
          textStyle: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            letterSpacing: 1.0,
          ),
        ),
      ),
    );
  }
}
