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
      headlineLarge: isMobile ? TextStyles.bold20pt() : TextStyles.bold28pt(),
      headlineMedium:
          isMobile ? TextStyles.semiBold16pt() : TextStyles.semiBold18pt(),
      bodyMedium: isMobile ? TextStyles.reg12pt() : TextStyles.reg14pt(),
      labelLarge:
          isMobile ? TextStyles.semiBold14pt() : TextStyles.semiBold18pt(),
      bodySmall:
          isMobile ? TextStyles.reg10pt(AppColors.black) : TextStyles.reg12pt(),
    );
  }

  return ThemeData(
    colorScheme: baseColorScheme,
    unselectedWidgetColor: AppColors.lightGray,
    textTheme: generateTextTheme(isMobile),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        foregroundColor: AppColors.white,
        backgroundColor: AppColors.coralRed,
        elevation: 0,
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: AppColors.deepLavender,
        textStyle: TextStyles.bold16pt()
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
