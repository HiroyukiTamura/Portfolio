import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/gen/assets.gen.dart';
import 'package:portfolio/resource/strings.dart';
import 'package:portfolio/resource/theme_colors.dart';
import 'package:portfolio/ui/section_radio.dart';
import 'package:portfolio/ui/section_skill_set.dart';
import 'package:portfolio/ui/section_top.dart';
import 'package:portfolio/ui/section_train.dart';

import 'skill_chip.dart';

part 'content.g.dart';

@swidget
Widget _root(BuildContext context) => Scaffold(
      backgroundColor: ThemeColors.kBg,
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 64, vertical: 64),
        child: Column(
          children: [
            const SectionTop(),
            const SizedBox(height: 64),
            const SectionSkillSet(),
            const SizedBox(height: 64),
            Text(
              'my apps',
              style: Theme.of(context).textTheme.headline4,
            ),
            const SizedBox(height: 64),
            Text(
              'ラジカッター',
              style: GoogleFonts.robotoTextTheme(Theme.of(context).textTheme)
                  .headline3,
            ),
            const SizedBox(height: 16),
            const SectionRadio(),
            const SizedBox(height: 64),
            Text(
              '全国列車位置情報アプリ',
              style: GoogleFonts.robotoTextTheme(Theme.of(context).textTheme)
                  .headline3,
            ),
            const SizedBox(height: 16),
            const SectionTrain(),
          ],
        ),
      ),
    );
