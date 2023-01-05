import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:portfolio/resource/dimens.dart';
import 'package:portfolio/resource/theme_colors.dart';
import 'package:portfolio/ui/section/section_article.dart';
import 'package:portfolio/ui/section/section_download.dart';
import 'package:portfolio/ui/section/section_oss.dart';
import 'package:portfolio/ui/section/section_itsumuso.dart';
import 'package:portfolio/ui/section/section_radio.dart';
import 'package:portfolio/ui/section/section_skill_set.dart';
import 'package:portfolio/ui/section/section_top.dart';
import 'package:portfolio/ui/section/section_train.dart';
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
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(64),
          child: Column(
            children: [
              const SectionTop(),
              const SizedBox(height: 16),
              const SectionDownloaded(),
              const SizedBox(height: 128),
              const SectionSkillSet(),
              const SizedBox(height: 128),
              const HeadLine4(text: 'works'),
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
              const HeadLine4(text: 'OSS'),
              const SizedBox(height: 48),
              SectionOss(singlePain: singlePainWorks),
              const SizedBox(height: 128),
              const SectionArticle(),
            ],
          ),
        ),
      );
    });
