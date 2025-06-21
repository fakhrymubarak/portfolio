import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

part 'app_colors.dart';
part 'text_styles.dart';

ThemeData getAppTheme(BuildContext context, bool isDarkMode) {
  final bool isMobile = MediaQuery.of(context).size.width < 600;
  final baseTheme = Theme.of(context);

  // TODO handle isDarkMode (light Mode) condition
  final darkColorScheme = baseTheme.colorScheme.copyWith(
    brightness: Brightness.dark,
    primary: AppColorsDark.primary,
    onPrimary: AppColorsDark.onPrimary,
    secondary: AppColorsDark.secondary,
    onSecondary: AppColorsDark.onSecondary,
    surface: AppColorsDark.surface,
    onSurface: AppColorsDark.onSurface,
    error: AppColorsDark.error,
    onError: AppColorsDark.onError,
  );

  // Generate text theme dynamically based on device type
  final defaultColors = AppColors.white;
  final textTheme = baseTheme.textTheme.copyWith(
    headlineLarge: isMobile
        ? TextStyles.extraBold24pt(defaultColors)
        : TextStyles.extraBold55pt(defaultColors),
    headlineMedium: isMobile
        ? TextStyles.extraBold20pt(defaultColors)
        : TextStyles.extraBold28pt(defaultColors),
    headlineSmall: isMobile
        ? TextStyles.extraBold16pt(defaultColors)
        : TextStyles.extraBold20pt(defaultColors),
    labelLarge: isMobile
        ? TextStyles.semiBold14pt(defaultColors)
        : TextStyles.semiBold24pt(defaultColors),
    labelMedium: isMobile
        ? TextStyles.semiBold12pt(defaultColors)
        : TextStyles.semiBold20pt(defaultColors),
    labelSmall: isMobile
        ? TextStyles.semiBold10pt(defaultColors)
        : TextStyles.semiBold16pt(defaultColors),
    bodyLarge: isMobile
        ? TextStyles.reg14pt(defaultColors)
        : TextStyles.reg24pt(defaultColors),
    bodyMedium: isMobile
        ? TextStyles.reg12pt(AppColorsDark.onSecondary)
        : TextStyles.reg20pt(AppColorsDark.onSecondary),
    bodySmall: isMobile
        ? TextStyles.reg10pt(AppColorsDark.onSecondary)
        : TextStyles.reg16pt(AppColorsDark.onSecondary),
  );

  return ThemeData(
    brightness: Brightness.dark,
    colorScheme: darkColorScheme,
    unselectedWidgetColor: AppColors.lightGray,
    textTheme: textTheme,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        foregroundColor: AppColorsDark.onPrimary,
        backgroundColor: AppColorsDark.primary,
        textStyle: TextStyles.extraBold16pt(),
        elevation: 0,
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
          foregroundColor: AppColorsDark.onSurface,
          textStyle: TextStyles.extraBold16pt()),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        foregroundColor: AppColorsDark.secondary,
        side: BorderSide(color: AppColorsDark.onSecondary, width: 2),
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      ),
    ),
  );
}
