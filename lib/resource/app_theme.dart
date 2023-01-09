import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  AppTheme._();

  static const kBg = Color(0xff151515);
  static final kBgGray = Colors.white.withAlpha(10);
  static const kAndroid = Color(0xff3DDC84);
}

extension BuildContextX on BuildContext {
  TextTheme genTextTheme() {
    final textTheme = Theme.of(this).textTheme;
    final languageCode = Localizations.localeOf(this).languageCode;
    final japanese = languageCode.toLowerCase() == 'ja';

    final googleFont = GoogleFonts.jetBrainsMonoTextTheme(textTheme).apply(
      displayColor: Colors.white,
      bodyColor: Colors.white,
    );
    return japanese
        ? googleFont.copyWith(
            bodyLarge: textTheme.bodyLarge!.copyWith(
              fontSize: 16,
              color: Colors.white70,
              height: 1.5,
            ),
            bodyMedium: textTheme.bodyMedium!.copyWith(
              color: Colors.white54,
              height: 1.5,
            ),
          )
        : googleFont.copyWith(
            bodyLarge: textTheme.bodyLarge!.copyWith(
              fontSize: 16,
              color: Colors.white70,
            ),
            bodyMedium: textTheme.bodyMedium!.copyWith(
              color: Colors.white54,
            ),
          );
  }
}
