import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:portfolio/resource/dimens.dart';
import 'package:portfolio/resource/theme_colors.dart';
import 'package:portfolio/ui/section/article.dart';
import 'package:portfolio/ui/section/download.dart';
import 'package:portfolio/ui/section/header.dart';
import 'package:portfolio/ui/section/itsumuso.dart';
import 'package:portfolio/ui/section/oss.dart';
import 'package:portfolio/ui/section/radio.dart';
import 'package:portfolio/ui/section/skill_set.dart';
import 'package:portfolio/ui/section/top.dart';
import 'package:portfolio/ui/section/train.dart';
import 'package:portfolio/ui/widget/text.dart';

part 'content.g.dart';

@swidget
Widget _root(BuildContext context) =>
    LayoutBuilder(builder: (context, constraints) {
      final singlePain = constraints.maxWidth < Dimens.MaxWidthSinglePain;
      final singlePainWorks =
          constraints.maxWidth < Dimens.WorksSinglePainThresh;
      return Scaffold(
        backgroundColor: ThemeColors.kBg,
        body: ListView(
          padding: const EdgeInsets.only(
            bottom: 64,
            right: 64,
            left: 64,
          ),
          children: [
            const SectionHeader(),
            const SizedBox(height: 16),
            const SectionTop(),
            const SizedBox(height: 16),
            const SectionDownloaded(),
            const SizedBox(height: 128),
            const SectionSkillSet(),
            const SizedBox(height: 128),
            const Center(
              child: HeadLine4(text: 'works'),
            ),
            const SizedBox(height: 16),
            SectionRadio(
              singlePain: singlePain,
            ),
            const SizedBox(height: 128),
            SectionTrain(
              singlePain: singlePain,
            ),
            const SizedBox(height: 128),
            SectionItsumuso(
              singlePain: singlePain,
            ),
            const SizedBox(height: 128),
            const Center(
              child: HeadLine4(text: 'OSS'),
            ),
            const SizedBox(height: 48),
            SectionOss(singlePain: singlePainWorks),
            const SizedBox(height: 128),
            const SectionArticle(),
            const SizedBox(height: 128),
          ],
        ),
      );
    });
