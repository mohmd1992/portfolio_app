import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/// نظام تصميم مستوحى من واجهة محرر الأكواد (Code Editor)
/// بما إن صاحب البورتفوليو مطور Flutter، الهوية البصرية مبنية
/// على أجواء الـ IDE: خلفية غامقة، لون تمييز دافئ زي syntax highlighting.
class AppColors {
  static const background = Color(0xFF14172B); // كحلي غامق عميق
  static const surface = Color(0xFF1E2240); // سطح البطاقات
  static const surfaceElevated = Color(0xFF262B4D);
  static const accent = Color(0xFFFFB454); // كهرماني - زي تعليقات الكود
  static const accentSecondary = Color(0xFF7EE8CA); // نعناعي - زي strings
  static const textPrimary = Color(0xFFF1EFEA);
  static const textMuted = Color(0xFF9AA0C3);
  static const divider = Color(0xFF2E325A);
}

class AppTheme {
  static ThemeData get theme {
    final displayFont = GoogleFonts.jetBrainsMonoTextTheme();
    final bodyFont = GoogleFonts.inter();

    return ThemeData(
      brightness: Brightness.dark,
      scaffoldBackgroundColor: AppColors.background,
      primaryColor: AppColors.accent,
      colorScheme: const ColorScheme.dark(
        primary: AppColors.accent,
        secondary: AppColors.accentSecondary,
        surface: AppColors.surface,
      ),
      textTheme: TextTheme(
        displayLarge: GoogleFonts.jetBrainsMono(
          fontSize: 34,
          fontWeight: FontWeight.w600,
          color: AppColors.textPrimary,
          height: 1.2,
        ),
        headlineMedium: GoogleFonts.jetBrainsMono(
          fontSize: 22,
          fontWeight: FontWeight.w600,
          color: AppColors.textPrimary,
        ),
        titleMedium: GoogleFonts.inter(
          fontSize: 16,
          fontWeight: FontWeight.w600,
          color: AppColors.textPrimary,
        ),
        bodyLarge: GoogleFonts.inter(
          fontSize: 15,
          color: AppColors.textPrimary,
          height: 1.6,
        ),
        bodyMedium: GoogleFonts.inter(
          fontSize: 13.5,
          color: AppColors.textMuted,
          height: 1.6,
        ),
        labelLarge: GoogleFonts.jetBrainsMono(
          fontSize: 13,
          color: AppColors.accentSecondary,
        ),
      ),
      dividerColor: AppColors.divider,
      useMaterial3: true,
    );
  }
}
