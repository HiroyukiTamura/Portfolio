import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/model/btn_link.dart';
import 'package:portfolio/ui/widget/text.dart';

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
                    onPressed: () {
                      // todo impl
                    },
                    child: Text(it.value),
                  ))
              .toList(),
        ),
        const SizedBox(height: 16),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BodyText1(text: caption),
            const SizedBox(height: 8),
            const HeadLine6(text: 'scores'),
            const SizedBox(height: 8),
            BodyPadded(text: 'likes: $likes'),
            BodyPadded(text: 'pub points: $pubPoints'),
            BodyPadded(text: 'popularity: $popularity%'),
            const SizedBox(height: 16),
            const HeadLine6(text: 'tech stack'),
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