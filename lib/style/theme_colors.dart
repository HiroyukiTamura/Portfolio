import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ThemeColors {
  static const kBg = Color(0xff151515);
  static final kBgGray = Colors.grey.shade700;
  static const kAndroid = Color(0xff3DDC84);

  static TextTheme genTextTheme(ThemeData theme) {
    final textTheme = theme.textTheme.copyWith(
      bodyLarge: theme.textTheme.bodyLarge!.copyWith(fontSize: 16),
    );
    return GoogleFonts.jetBrainsMonoTextTheme(textTheme)
        .apply(
      displayColor: Colors.white,
      bodyColor: Colors.white,
    );
  }
}