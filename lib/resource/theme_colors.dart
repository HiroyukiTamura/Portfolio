import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ThemeColors {

  ThemeColors._();

  static const kBg = Color(0xff151515);
  static final kBgGray = Colors.white.withAlpha(10);
  static const kAndroid = Color(0xff3DDC84);

  static TextTheme genTextTheme(ThemeData theme) {
    final googleFont = GoogleFonts.jetBrainsMonoTextTheme(theme.textTheme).apply(
      displayColor: Colors.white,
      bodyColor: Colors.white,
    );
    return googleFont.copyWith(
      bodyLarge: GoogleFonts.robotoTextTheme(theme.textTheme).bodyLarge!.copyWith(
        fontSize: 16,
        color: Colors.white70,
      ),
    );
  }
}
