import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:portfolio/ui/content.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'Hiroyuki Tamura',
        theme: _theme,
        home: const Root(),
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
      );

  ThemeData get _theme {
    final themeData = ThemeData(
      primarySwatch: Colors.orange,
    );
    return themeData.copyWith(
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: Colors.orange,
        ),
      ),
    );
  }
}
