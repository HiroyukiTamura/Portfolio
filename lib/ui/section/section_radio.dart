import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:portfolio/gen/assets.gen.dart';
import 'package:portfolio/resource/strings.dart';
import 'package:portfolio/ui/section/section_work.dart';
import 'package:portfolio/ui/widget/skill_chip.dart';

part 'section_radio.g.dart';

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
      techChips: [
        const SkillChipKotlin(),
        SkillChip(
          label: 'Jetpack Compose',
          avatar: Assets.images.jetpackCompose.image(),
        ),
        SkillChip(
          label: 'Realm',
          avatar: Padding(
            padding: const EdgeInsets.all(2),
            child: Assets.images.realm.svg(),
          ),
        ),
        const SkillChipFirebase(),
        const SkillChipNodeJs(),
        const SkillChipTypeScript(),
        const SkillChipJira(),
        const SkillChipAdmob(),
      ],
      image: Container(
        child: Assets.images.radikoCover.image(),
      ),
    );
