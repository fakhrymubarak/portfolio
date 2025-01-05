import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

part 'colors.dart';

part 'text_styles.dart';

// App Themes
ThemeData getAppTheme(BuildContext context) {
  final bool isMobile = MediaQuery.of(context).size.width < 600;
  final baseTheme = Theme.of(context);

  final baseColorScheme = baseTheme.colorScheme.copyWith(
    brightness: Brightness.light,
    primary: AppColors.primary,
    onPrimary: AppColors.onPrimary,
    secondary: AppColors.secondary,
    onSecondary: AppColors.onSecondary,
    surface: AppColors.surface,
    onSurface: AppColors.onSurface,
    error: AppColors.error,
    onError: AppColors.onError,
  );

  // Generate text theme dynamically based on device type
  TextTheme generateTextTheme(bool isMobile) {
    return baseTheme.textTheme.copyWith(
      headlineLarge: isMobile ? TextStyles.extraBold20ptStix() : TextStyles.extraBold28ptStix(),
      headlineMedium: isMobile ? TextStyles.extraBold16pt() : TextStyles.extraBold24pt(),
      headlineSmall: isMobile ? TextStyles.extraBold14pt() : TextStyles.extraBold20pt(),
      labelLarge: isMobile ? TextStyles.semiBold14pt() : TextStyles.semiBold24pt(),
      labelMedium: isMobile ? TextStyles.semiBold12pt() : TextStyles.semiBold20pt(),
      labelSmall: isMobile ? TextStyles.semiBold10pt() : TextStyles.semiBold16pt(),
      bodyLarge: isMobile ? TextStyles.reg14pt() : TextStyles.reg24pt(),
      bodyMedium: isMobile ? TextStyles.reg12pt() : TextStyles.reg20pt(),
      bodySmall: isMobile ? TextStyles.reg10pt() : TextStyles.reg16pt(),
    );
  }

  return ThemeData(
    colorScheme: baseColorScheme,
    unselectedWidgetColor: AppColors.lightGray,
    textTheme: generateTextTheme(isMobile),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        foregroundColor: AppColors.onPrimary,
        backgroundColor: AppColors.primary,
        textStyle: TextStyles.extraBold16pt(),
        elevation: 0,
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: AppColors.deepLavender,
        textStyle: TextStyles.extraBold16pt()
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        foregroundColor: AppColors.oliveGreen,
        side: BorderSide(color: AppColors.oliveGreen, width: 2),
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      ),
    ),
  );
}
