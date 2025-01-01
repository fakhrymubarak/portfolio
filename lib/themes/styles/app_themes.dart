import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

part 'colors.dart';

part 'text_styles.dart';

// App Themes
ThemeData getAppTheme(BuildContext context) => ThemeData(
      colorScheme: Theme.of(context).colorScheme.copyWith(
            primary: Colors.primary,
            onPrimary: Colors.white,
            secondary: Colors.secondary,
            error: Colors.redError,
          ),
      unselectedWidgetColor: Colors.gray,
      textTheme: Theme.of(context).textTheme.copyWith(
          bodyMedium: TextStyles.reg12pt(),
          labelLarge: TextStyles.semiBold14pt(),
          bodySmall: TextStyles.reg10pt()),
    );
