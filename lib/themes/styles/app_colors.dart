part of 'app_themes.dart';

class AppColors {
  AppColors._();

  static const black = Color(0xFF090A0A);
  static const black70 = Color(0xB3000000);
  static const black20 = Color(0x33000000);
  static const white = Color(0xFFFFFFFF);
  static const lightGray = Color(0xFFABABAB);
  static const darkGray = Color(0xFF606060);

  static const coralRed = Color(0xFFFF6F61); // Coral Red
  static const deepLavender = Color(0xFF6B5B95); // Deep Lavender
  static const roseQuartz = Color(0xFFF7CAC9); // Rose Quartz
  static const oliveGreen = Color(0xFF88B04B); // Olive Green
  static const retroRed = Color(0xFFFF4E50);

  static const primary = AppColors.coralRed;
  static const onPrimary = AppColors.white;
  static const secondary = AppColors.deepLavender;
  static const onSecondary = AppColors.white;
  static const surface = AppColors.white;
  static const onSurface = AppColors.black;
  static const error = AppColors.retroRed;
  static const onError = AppColors.white;

  static const kotlinGradient = [Color(0xFFE44857), Color(0xFFC711E1), Color(0xFF7F52FF)];
  static const flutterGradient = [Color(0xFF40C4FF), Color(0xFF01579B)];
}

class AppColorsDark {
  AppColorsDark._();

  static const primary = Color(0xFFC711E1);
  static const onPrimary = surface;

  static const secondary = Color(0xFF01579B);
  static const onSecondary = Color(0xFFCECECE);

  static const surface = Color(0xFF161513);
  static const surfaceDim = Color(0xBF161513);
  static const onSurface = AppColors.white;

  static const error = AppColors.retroRed;
  static const onError = AppColors.white;
}
