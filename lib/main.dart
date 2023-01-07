import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:portfolio/resource/app_theme.dart';
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
        theme: ThemeData(
          textTheme: AppTheme.genTextTheme(Theme.of(context)),
          primarySwatch: Colors.orange,
        ),
        home: const Root(),
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
      );
}
