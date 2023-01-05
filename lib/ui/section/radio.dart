import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:portfolio/gen/assets.gen.dart';
import 'package:portfolio/resource/strings.dart';
import 'package:portfolio/ui/section/work.dart';
import 'package:portfolio/ui/widget/skill_chip.dart';

part 'radio.g.dart';

@swidget
Widget _sectionRadio(
  BuildContext context, {
  required bool singlePain,
}) =>
    SectionWork(
      singlePain: singlePain,
      title: 'ラジカッター',
      caption: Strings.radioCaption,
      totalDlNumber: '3.5M',
      monthlyUserNumber: '11k',
      googlePlayUrl:
          'https://play.google.com/store/apps/details?id=com.cks.hiroyuki2.radiko',
      techChips: const [
        SkillChipKotlin(),
        SkillChipCompose(),
        SkillChipRealm(),
        SkillChipFirebase(),
        SkillChipNodeJs(),
        SkillChipTypeScript(),
        SkillChipJira(),
        SkillChipAdmob(),
      ],
      image: Container(
        child: Assets.images.radikoCover.image(),
      ),
    );
