import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/gen/assets.gen.dart';

part 'section_work.g.dart';

@swidget
Widget sectionWork(
  BuildContext context, {
  required String title,
  required String caption,
  required String totalDlNumber,
  required String monthlyUserNumber,
  required List<Widget> techChips,
  required Widget image,
  String? googlePlayUrl,
  String? appStoreUrl,
}) =>
    Column(
      children: [
        Text(
          title,
          style:
              GoogleFonts.notoSansJavaneseTextTheme(Theme.of(context).textTheme)
                  .headline3,
        ),
        const SizedBox(height: 64),
        Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    caption,
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      if (googlePlayUrl != null)
                        Assets.images.googlePlayBadge.image(height: 64),
                      if (googlePlayUrl != null && appStoreUrl != null)
                        const SizedBox(width: 8),
                      if (appStoreUrl != null)
                        Assets.images.appStoreBadge.svg(height: 44),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'usage',
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  const SizedBox(height: 8),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Text(
                      'total DL: $totalDlNumber',
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Text(
                      'active user: $monthlyUserNumber/month',
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'tech stack',
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  const SizedBox(height: 16),
                  Wrap(
                    spacing: 8,
                    runSpacing: 8,
                    children: techChips,
                  ),
                ],
              ),
            ),
            const SizedBox(width: 64),
            Expanded(
              child: Align(
                alignment: Alignment.centerLeft,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(24),
                  child: image,
                ),
              ),
            )
          ],
        ),
      ],
    );
