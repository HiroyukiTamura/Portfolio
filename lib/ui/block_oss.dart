import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/model/btn_link.dart';

part 'block_oss.g.dart';

@swidget
Widget _blockFlutterOss(
  BuildContext context, {
  required String title,
  required String caption,
  required int likes,
  required String pubPoints,
  required int popularity,
  required List<BtnLink> links,
  required List<Widget> skillChips,
}) =>
    Column(
      children: [
        Text(
          title,
          style:
              GoogleFonts.notoSansJavaneseTextTheme(Theme.of(context).textTheme)
                  .headline5,
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: links
              .map((it) => TextButton(
                    onPressed: () {},
                    child: Text(it.value),
                  ))
              .toList(),
        ),
        const SizedBox(height: 16),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              caption,
              style: Theme.of(context).textTheme.bodyText1,
            ),
            const SizedBox(height: 8),
            Text(
              'scores',
              style: Theme.of(context).textTheme.headline6,
            ),
            const SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'likes: $likes',
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'pub points: $pubPoints',
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'popularity: $popularity%',
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
              children: skillChips,
            ),
          ],
        ),
      ],
    );
