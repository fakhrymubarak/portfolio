part of 'app_themes.dart';

class TextStyles {
  TextStyles._();

  // Bold(w700), 16pt
  static TextStyle bold16pt([Color? color]) {
    return GoogleFonts.montserrat(
      fontSize: 16,
      fontWeight: FontWeight.w700,
      color: color ?? AppColors.black,
    );
  }

  // Bold(w700), 28pt
  static TextStyle bold28pt([Color? color]) {
    return GoogleFonts.montserrat(
      fontSize: 28,
      fontWeight: FontWeight.w700,
      color: color ?? AppColors.black,
    );
  }

  // Bold(w700), 20pt
  static TextStyle bold20pt([Color? color]) {
    return GoogleFonts.montserrat(
      fontSize: 20,
      fontWeight: FontWeight.w700,
      color: color ?? AppColors.black,
    );
  }

  // SemiBold(w600), 24pt
  static TextStyle semiBold24pt([Color? color]) {
    return GoogleFonts.montserrat(
      fontSize: 24,
      fontWeight: FontWeight.w600,
      color: color ?? AppColors.black,
    );
  }


  // SemiBold(w600), 18pt
  static TextStyle semiBold18pt([Color? color]) {
    return GoogleFonts.montserrat(
      fontSize: 18,
      fontWeight: FontWeight.w600,
      color: color ?? AppColors.black,
    );
  }

  // SemiBold(w600), 16pt
  static TextStyle semiBold16pt([Color? color]) {
    return GoogleFonts.montserrat(
      fontSize: 16,
      fontWeight: FontWeight.w600,
      color: color ?? AppColors.black,
    );
  }

  // SemiBold(w600), 14pt
  static TextStyle semiBold14pt([Color? color]) {
    return GoogleFonts.montserrat(
      fontSize: 14,
      fontWeight: FontWeight.w600,
      color: color ?? AppColors.black,
    );
  }

  // Regular(w400), 14pt
  static TextStyle reg14pt([Color? color]) {
    return GoogleFonts.montserrat(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: color ?? AppColors.black,
    );
  }

  // Regular(w400), 12pt
  static TextStyle reg12pt([Color? color]) {
    return GoogleFonts.montserrat(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      color: color ?? AppColors.black,
    );
  }

  // Regular(w400), 10pt
  static TextStyle reg10pt([Color? color]) {
    return GoogleFonts.montserrat(
      fontSize: 10,
      fontWeight: FontWeight.w400,
      color: color ?? AppColors.lightGray,
    );
  }
}
