import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/gen/assets.gen.dart';
import 'package:portfolio/resource/strings.dart';
import 'package:portfolio/resource/theme_colors.dart';
import 'package:portfolio/ui/section_download.dart';
import 'package:portfolio/ui/section_radio.dart';
import 'package:portfolio/ui/section_skill_set.dart';
import 'package:portfolio/ui/section_top.dart';
import 'package:portfolio/ui/section_train.dart';

part 'content.g.dart';

@swidget
Widget _root(BuildContext context) => Scaffold(
      backgroundColor: ThemeColors.kBg,
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 64, vertical: 64),
        child: Column(
          children: [
            const SectionTop(),
            const SizedBox(height: 16),
            const SectionDownloaded(),
            const SizedBox(height: 128),
            const SectionSkillSet(),
            const SizedBox(height: 128),
            Text(
              'works',
              style: Theme.of(context).textTheme.headline4,
            ),
            const SizedBox(height: 64),
            const SectionRadio(),
            const SizedBox(height: 128),
            const SectionTrain(),
          ],
        ),
      ),
    );
