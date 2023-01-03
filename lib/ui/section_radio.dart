import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:portfolio/gen/assets.gen.dart';
import 'package:portfolio/resource/strings.dart';
import 'package:portfolio/ui/section_work.dart';
import 'package:portfolio/ui/skill_chip.dart';

part 'section_radio.g.dart';

@swidget
Widget _sectionRadio(BuildContext context) => SectionWork(
    title: 'ラジカッター',
    caption: Strings.radioCaption,
    totalDlNumber: '3.5M',
    monthlyUserNumber: '11k',
    techChips: [
      const SkillChipKotlin(),
      SkillChip(
        label: 'Jetpack Compose',
        avatar: Assets.images.jetpackCompose.image(),
      ),
      SkillChip(
        label: 'realm',
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
    image: Assets.images.radikoCover.image(height: 280, fit: BoxFit.fill),
  );
