import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:portfolio/ui/widget/text.dart';

part 'top.g.dart';

@swidget
Widget _sectionTop(BuildContext context) => Column(
      children: [
        Text(
          'Hiroyuki Tamara',
          style: Theme.of(context).textTheme.headline2,
        ),
        const HeadLine4(text: 'mobile app developer'),
        const SizedBox(height: 72),
        BodyText1(
          text: AppLocalizations.of(context)!.headline,
        )
      ],
    );
